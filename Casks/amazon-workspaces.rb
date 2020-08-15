cask "amazon-workspaces" do
  version "3.0.9.1231"
  sha256 "f363e1cadd72ea706591617f5660f7bafdaa249af1979e80d58bb21c0fd430df"

  # workspaces-client-updates.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://workspaces-client-updates.s3.amazonaws.com/prod/iad/osx/WorkSpaces.pkg"
  appcast "https://d2td7dqidlhjx7.cloudfront.net/prod/iad/osx/WorkSpacesAppCast_macOS_20171023.xml"
  name "Amazon Workspaces"
  homepage "https://clients.amazonworkspaces.com/"

  pkg "WorkSpaces.pkg"

  uninstall pkgutil: "com.amazon.workspaces"
end
