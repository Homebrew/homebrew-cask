cask 'appserver' do
  version '1.1.4-212'
  sha256 '81f40c5335774b469ddfe4045462510a576a0f9ad5bbfc2363ea7b3de582bb46'

  # github.com/appserver-io/appserver was verified as official when first introduced to the cask
  url "https://github.com/appserver-io/appserver/releases/download/#{version.sub(%r{-.*}, '')}/appserver-dist_#{version}_x86_64.pkg"
  appcast 'https://github.com/appserver-io/appserver/releases.atom',
          checkpoint: '1d421bed542b5ce4df18f0388ae00f2cc38b661ba9f0d5deedffced970095e4a'
  name 'appserver.io'
  homepage 'http://appserver.io/'

  pkg "appserver-dist_#{version}_x86_64.pkg"

  uninstall pkgutil: [
                       'com.techdivision.appserver-io.runtime',
                       'com.techdivision.appserver-io.source',
                     ]
end
