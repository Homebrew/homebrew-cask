cask "amazon-workspaces" do
  version "4.0.1.2036"
  sha256 "ee8983c56b5fb98c6142627f69289011f78e8ed16fedaa2998e5c6e7aeac5e2d"

  url "https://d2td7dqidlhjx7.cloudfront.net/prod/iad/osx/WorkSpaces_AllProducts_#{version.split(".")[-1]}.zip",
      verified: "d2td7dqidlhjx7.cloudfront.net/prod/iad/osx/"
  name "Amazon Workspaces"
  desc "Cloud native persistent desktop virtualization"
  homepage "https://clients.amazonworkspaces.com/"

  livecheck do
    url "https://d2td7dqidlhjx7.cloudfront.net/prod/iad/osx/WorkSpacesAppCast_macOS_20171023.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  pkg "WorkSpaces.pkg"

  uninstall pkgutil: "com.amazon.workspaces"

  zap trash: [
    "~/Library/Application Support/Amazon Web Services/Amazon WorkSpaces",
    "~/Library/Caches/com.amazon.workspaces",
    "~/Library/Preferences/com.amazon.workspaces.plist",
    "~/Library/Saved Application State/com.amazon.workspaces.savedState",
  ]
end
