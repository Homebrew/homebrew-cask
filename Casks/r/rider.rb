cask "rider" do
  arch arm: "-aarch64"

  version "2025.1.2,251.25410.119"
  sha256 arm:   "ab6645bba503f0a9d67b2838d1dd88a81ad81dd34e6015ccaea30400c35659e4",
         intel: "23f3479d1cff5ee1726726bea866ff755b08930e9da43b7ad250e6cb620c1dcf"

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
  depends_on macos: ">= :high_sierra"

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
