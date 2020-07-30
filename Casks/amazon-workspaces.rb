cask "amazon-workspaces" do
  version "3.0.8.1194"
  sha256 "ab183dd65afb265797d7439e94f97b518297b1dafd14101c646ce593090f67ec"

  # workspaces-client-updates.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://workspaces-client-updates.s3.amazonaws.com/prod/iad/osx/WorkSpaces.pkg"
  appcast "https://d2td7dqidlhjx7.cloudfront.net/prod/iad/osx/WorkSpacesAppCast_macOS_20171023.xml"
  name "Amazon Workspaces"
  homepage "https://clients.amazonworkspaces.com/"

  pkg "WorkSpaces.pkg"

  uninstall pkgutil: "com.amazon.workspaces"
end
