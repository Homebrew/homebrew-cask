cask "amazon-workspaces" do
  version "5.30.1.5995"
  sha256 "970867ba62b011428e6f48347081a575b5c744dfc25d11503fd4f7ebc6c601c2"

  url "https://d2td7dqidlhjx7.cloudfront.net/prod/global/osx/WorkSpaces_AllProducts_#{version.split(".").last}.zip",
      verified: "d2td7dqidlhjx7.cloudfront.net/prod/global/osx/"
  name "Amazon Workspaces"
  desc "Cloud native persistent desktop virtualization"
  homepage "https://clients.amazonworkspaces.com/"

  livecheck do
    url "https://d2td7dqidlhjx7.cloudfront.net/prod/global/osx/WorkSpacesAppCast_macOS_20171023.xml"
    strategy :sparkle
  end

  auto_updates true

  pkg "WorkSpaces.pkg"

  uninstall launchctl: "com.amazon.workspaces.updater",
            pkgutil:   "com.amazon.workspaces"

  zap trash: [
    "~/Library/Application Support/Amazon Web Services/Amazon WorkSpaces",
    "~/Library/Caches/com.amazon.workspaces",
    "~/Library/Preferences/com.amazon.workspaces.plist",
    "~/Library/Saved Application State/com.amazon.workspaces.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
