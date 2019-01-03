cask 'amazon-workspaces' do
  version '2.5.1'
  sha256 '3d2f23ef4c61df497fed2e9dccad59786da106fb5591ead2b82a3e9711c0e21c'

  # d2td7dqidlhjx7.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d2td7dqidlhjx7.cloudfront.net/prod/global/osx/WorkSpaces.pkg'
  appcast 'https://d2td7dqidlhjx7.cloudfront.net/prod/global/osx/WorkSpacesAppCast_macOS_20171023.xml'
  name 'Amazon Workspaces'
  homepage 'https://clients.amazonworkspaces.com/'

  pkg 'WorkSpaces.pkg'

  uninstall pkgutil: 'com.amazon.workspaces'
end
