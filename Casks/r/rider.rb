cask "rider" do
  arch arm: "-aarch64"

  version "2026.1.1,261.23567.144"
  sha256 arm:   "7919756da703a7870617214dd30ef436642c9e33fa452ae51b9acb31b07f7d68",
         intel: "3aa7acf6038c91a3eaa27b268f355de00319bc2cd60536187ffc684505a40401"

  url "https://download.jetbrains.com/rider/JetBrains.Rider-#{version.csv.first}#{arch}.dmg"
  name "JetBrains Rider"
  desc ".NET IDE"
  homepage "https://www.jetbrains.com/rider/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=RD&latest=true&type=release"
    strategy :json do |json|
      json["RD"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  auto_updates true
  depends_on :macos

  app "Rider.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/rider.wrapper.sh"
  binary shimscript, target: "rider"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/Rider.app/Contents/MacOS/rider' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/Rider#{version.major_minor}",
    "~/Library/Caches/Rider#{version.major_minor}",
    "~/Library/Logs/Rider#{version.major_minor}",
    "~/Library/Preferences/jetbrains.rider.71e559ef.plist",
    "~/Library/Preferences/Rider#{version.major_minor}",
    "~/Library/Saved Application State/com.jetbrains.rider.savedState",
  ]
end
