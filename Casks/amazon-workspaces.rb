cask "amazon-workspaces" do
  version "3.1.7.1881"
  sha256 :no_check

  url "https://workspaces-client-updates.s3.amazonaws.com/prod/iad/osx/WorkSpaces.pkg",
      verified: "workspaces-client-updates.s3.amazonaws.com/"
  name "Amazon Workspaces"
  homepage "https://clients.amazonworkspaces.com/"

  livecheck do
    url "https://d2td7dqidlhjx7.cloudfront.net/prod/iad/osx/WorkSpacesAppCast_macOS_20171023.xml"
    strategy :sparkle
  end

  pkg "WorkSpaces.pkg"

  uninstall pkgutil: "com.amazon.workspaces"

  zap trash: [
    "~/Library/Application Support/Amazon Web Services/Amazon WorkSpaces",
    "~/Library/Caches/com.amazon.workspaces",
    "~/Library/Preferences/com.amazon.workspaces.plist",
    "~/Library/Saved Application State/com.amazon.workspaces.savedState",
  ]
end
