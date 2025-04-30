cask "amazon-workspaces" do
  version "5.27.0.5857"
  sha256 "f473278810d8f0557038d35b58c9c34ab6e20c49c8e3c1e72b1ea8924685f899"

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
