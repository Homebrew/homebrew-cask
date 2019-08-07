cask 'amazon-workspaces' do
  version '2.5.9'
  sha256 '215c762adc7fcc35cb161604a74f25f0b7ac9e94f9c9727c4945349826b1bcfe'

  # d2td7dqidlhjx7.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d2td7dqidlhjx7.cloudfront.net/prod/global/osx/WorkSpaces.pkg'
  appcast 'https://d2td7dqidlhjx7.cloudfront.net/prod/global/osx/WorkSpacesAppCast_macOS_20171023.xml'
  name 'Amazon Workspaces'
  homepage 'https://clients.amazonworkspaces.com/'

  pkg 'WorkSpaces.pkg'

  uninstall pkgutil: 'com.amazon.workspaces'
end
