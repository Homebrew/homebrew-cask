cask "amazon-workspaces" do
  version "3.1.0.1521"
  sha256 "8de42dbf0458fe9ffbbfdffa7a4e5c0cd3b5507c6c227004d6a1fabacb6a85d1"

  # workspaces-client-updates.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://workspaces-client-updates.s3.amazonaws.com/prod/iad/osx/WorkSpaces.pkg"
  appcast "https://d2td7dqidlhjx7.cloudfront.net/prod/iad/osx/WorkSpacesAppCast_macOS_20171023.xml"
  name "Amazon Workspaces"
  homepage "https://clients.amazonworkspaces.com/"

  pkg "WorkSpaces.pkg"

  uninstall pkgutil: "com.amazon.workspaces"
end
