cask 'amazon-workspaces' do
  version '3.0.6'
  sha256 'fe6eb189569ead45ef69b1826eb6a9bbd07498067b243855b56f5aeeb2691584'

  # workspaces-client-updates.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url 'https://workspaces-client-updates.s3.amazonaws.com/prod/iad/osx/WorkSpaces.pkg'
  appcast 'https://d2td7dqidlhjx7.cloudfront.net/prod/iad/osx/WorkSpacesAppCast_macOS_20171023.xml'
  name 'Amazon Workspaces'
  homepage 'https://clients.amazonworkspaces.com/'

  pkg 'WorkSpaces.pkg'

  uninstall pkgutil: 'com.amazon.workspaces'
end
