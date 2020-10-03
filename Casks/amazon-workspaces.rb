cask "amazon-workspaces" do
  version "3.0.11.1344"
  sha256 "e70092f91850be1b1b168431ae197b5a4541a55e3f88824c2c21069400409de7"

  # workspaces-client-updates.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://workspaces-client-updates.s3.amazonaws.com/prod/iad/osx/WorkSpaces.pkg"
  appcast "https://d2td7dqidlhjx7.cloudfront.net/prod/iad/osx/WorkSpacesAppCast_macOS_20171023.xml"
  name "Amazon Workspaces"
  homepage "https://clients.amazonworkspaces.com/"

  pkg "WorkSpaces.pkg"

  uninstall pkgutil: "com.amazon.workspaces"
end
