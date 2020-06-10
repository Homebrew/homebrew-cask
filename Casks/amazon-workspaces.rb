cask 'amazon-workspaces' do
  version '3.0.7.1122'
  sha256 '0f5da9622bee54191f12538a01635fd5ceb2f9259ef8973c0980cdc633c88cc9'

  # workspaces-client-updates.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url 'https://workspaces-client-updates.s3.amazonaws.com/prod/iad/osx/WorkSpaces.pkg'
  appcast 'https://d2td7dqidlhjx7.cloudfront.net/prod/iad/osx/WorkSpacesAppCast_macOS_20171023.xml'
  name 'Amazon Workspaces'
  homepage 'https://clients.amazonworkspaces.com/'

  pkg 'WorkSpaces.pkg'

  uninstall pkgutil: 'com.amazon.workspaces'
end
