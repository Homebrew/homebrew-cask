cask 'amazon-workspaces' do
  version '2.5.6'
  sha256 '0f98a9d262ed1b8c2f66509a05eb3ef2c9c2b9716aa2f7d9a77c76b272342ebd'

  # d2td7dqidlhjx7.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d2td7dqidlhjx7.cloudfront.net/prod/global/osx/WorkSpaces.pkg'
  appcast 'https://d2td7dqidlhjx7.cloudfront.net/prod/global/osx/WorkSpacesAppCast_macOS_20171023.xml'
  name 'Amazon Workspaces'
  homepage 'https://clients.amazonworkspaces.com/'

  pkg 'WorkSpaces.pkg'

  uninstall pkgutil: 'com.amazon.workspaces'
end
