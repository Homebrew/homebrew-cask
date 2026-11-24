cask "datagrip" do
  arch arm: "-aarch64"

  version "2026.3.0.1,263.7307.336"
  sha256 arm:   "a607bf625b54ba6846abdc3b5021a738310707bb1aca4d95e6af1857ef0d02f8",
         intel: "5a0dad8c158013c070abf1ee668689ff5d29e0d5d4fdb03206ecb2d2d808495c"

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
