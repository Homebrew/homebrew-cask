cask "amazon-workspaces" do
  version "4.0.3.2103"
  sha256 "51bd247e3b38269767950d9ab791d5e8ef92806baaeb41e5ce1b9975b81d7a6a"

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
