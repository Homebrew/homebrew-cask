cask 'appserver' do
  version '1.1.4-212'
  sha256 '81f40c5335774b469ddfe4045462510a576a0f9ad5bbfc2363ea7b3de582bb46'

  # github.com/appserver-io/appserver was verified as official when first introduced to the cask
  url "https://github.com/appserver-io/appserver/releases/download/#{version.sub(%r{-.*}, '')}/appserver-dist_#{version}_x86_64.pkg"
  appcast 'https://github.com/appserver-io/appserver/releases.atom',
          checkpoint: '6b6938251698ee9bf9c3f14095cdc1a750ae77c5af45eccbf7aa8cd0d6f4f623'
  name 'appserver.io'
  homepage 'http://appserver.io/'

  pkg "appserver-dist_#{version}_x86_64.pkg"

  uninstall pkgutil: [
                       'com.techdivision.appserver-io.runtime',
                       'com.techdivision.appserver-io.source',
                     ]
end
