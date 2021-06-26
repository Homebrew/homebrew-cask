cask "amazon-workspaces" do
  version "3.1.9.1976"
  sha256 "0860de8e70af7f444ca5a9ae47173f1ad650f8e708595d23b74511d0d23a5aa6"

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
