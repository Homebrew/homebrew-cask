cask "amazon-workspaces" do
  version "5.28.1.5887"
  sha256 "38348e6fdd9b1eba7078c8f8fdba58309a91d74f7db552d1182cb83f593cff57"

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
  depends_on macos: ">= :catalina"

  pkg "WorkSpaces.pkg"

  uninstall pkgutil: "com.amazon.workspaces"

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
