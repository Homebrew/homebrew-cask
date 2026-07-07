cask "amazon-workspaces" do
  version "5.33.0.6168"
  sha256 "1c9c4d241b5a5c19d4ef3ec755e067abc8d5a5105b2c12b8643830281ca2264c"

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
  depends_on :macos

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
