cask "rider" do
  arch arm: "-aarch64"

  version "2026.3,263.7307.258"
  sha256 arm:   "3719650bb2bf0f0f92e54720c9f1209fde9d1bb305419357827621f49d5437bb",
         intel: "f1e758e624f648f6acd4e3c2fc5d79a88a1f1fc1d133bd64804d9116bd513144"

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
  command_wrapper "rider",
                  executable: "#{appdir}/Rider.app/Contents/MacOS/rider"

  uninstall quit: "com.jetbrains.rider"

  zap trash: [
    "~/Library/Application Support/Rider#{version.major_minor}",
    "~/Library/Caches/Rider#{version.major_minor}",
    "~/Library/Logs/Rider#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.rider.plist",
    "~/Library/Preferences/jetbrains.rider.71e559ef.plist",
    "~/Library/Preferences/Rider#{version.major_minor}",
    "~/Library/Saved Application State/com.jetbrains.rider.savedState",
  ]
end
