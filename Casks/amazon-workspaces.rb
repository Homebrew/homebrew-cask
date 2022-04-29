cask "amazon-workspaces" do
  version "4.0.7.2248"
  sha256 "6f4f61172dc62b75cb1de3f8a5afbc2df691ff5326c1c69bcaea4f59d80a6cc3"

  url "https://d2td7dqidlhjx7.cloudfront.net/prod/global/osx/WorkSpaces_AllProducts_#{version.split(".")[-1]}.zip",
      verified: "d2td7dqidlhjx7.cloudfront.net/prod/global/osx/"
  name "Amazon Workspaces"
  desc "Cloud native persistent desktop virtualization"
  homepage "https://clients.amazonworkspaces.com/"

  livecheck do
    url "https://d2td7dqidlhjx7.cloudfront.net/prod/global/osx/WorkSpacesAppCast_macOS_20171023.xml"
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
