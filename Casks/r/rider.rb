cask "rider" do
  arch arm: "-aarch64"

  version "2025.3.0.3,253.28294.237"
  sha256 arm:   "ff03408013ce86ffd437204d635401a4ca673ee15596e3d93cd9c69e63e7e7c3",
         intel: "e8261d30d549f1809228c84e4b31d2cae337cb7bc35cd6da4e0f801e4d2f52db"

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
