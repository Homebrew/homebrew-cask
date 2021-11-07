cask "amazon-workspaces" do
  version "4.0.4.2126"
  sha256 "da40a909f975b74f098230bdd952f5d5b465c57a5e9179755887ae23699b72df"

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
