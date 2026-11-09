cask "datagrip" do
  arch arm: "-aarch64"

  version "2026.3,263.7307.216"
  sha256 arm:   "17201e7bf85313612ba5e7644f8b2293c0fc95137e2e442879f94899df8ec735",
         intel: "24df7d8f6b35406dd2576c2e5874bf4e125da9787e2e33d2acae488eb31f2f54"

  url "https://download.jetbrains.com/datagrip/datagrip-#{version.csv.first}#{arch}.dmg"
  name "DataGrip"
  desc "Databases and SQL IDE"
  homepage "https://www.jetbrains.com/datagrip/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=DG&latest=true&type=release"
    strategy :json do |json|
      json["DG"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  auto_updates true
  depends_on :macos

  app "DataGrip.app"
  command_wrapper "datagrip",
                  executable: "#{appdir}/DataGrip.app/Contents/MacOS/datagrip"

  uninstall launchctl: "application.com.jetbrains.app.daemon.*",
            quit:      "com.jetbrains.datagrip"

  zap trash: [
    "~/Library/Application Support/JetBrains/DataGrip*",
    "~/Library/Caches/JetBrains/DataGrip*",
    "~/Library/Logs/JetBrains/DataGrip*",
    "~/Library/Preferences/com.jetbrains.datagrip.plist",
    "~/Library/Saved Application State/com.jetbrains.datagrip.savedState",
  ]
end
