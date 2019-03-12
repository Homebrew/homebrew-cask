cask 'amazon-workspaces' do
  version '2.5.2'
  sha256 '59494b484d4c3488d70ca1dd59e52785376f784838729869a2b7af5816411e92'

  # d2td7dqidlhjx7.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d2td7dqidlhjx7.cloudfront.net/prod/global/osx/WorkSpaces.pkg'
  appcast 'https://d2td7dqidlhjx7.cloudfront.net/prod/global/osx/WorkSpacesAppCast_macOS_20171023.xml'
  name 'Amazon Workspaces'
  homepage 'https://clients.amazonworkspaces.com/'

  pkg 'WorkSpaces.pkg'

  uninstall pkgutil: 'com.amazon.workspaces'
end
