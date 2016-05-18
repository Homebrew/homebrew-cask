cask 'appserver' do
  version '1.1.1-180'
  sha256 'ee7de10a268e362b14724ff11d8a4b7baf246b8f007f4ac85438460967f364c1'

  # github.com/appserver-io/appserver was verified as official when first introduced to the cask
  url "https://github.com/appserver-io/appserver/releases/download/#{version.sub(%r{-.*}, '')}/appserver-dist_#{version}_x86_64.pkg"
  appcast 'https://github.com/appserver-io/appserver/releases.atom',
          checkpoint: 'a4a29f3e46362196e5e62d90e353fdaf86bdcba32c7b886bf89164ed1c0f8aaf'
  name 'appserver.io'
  homepage 'http://www.appserver.io'
  license :oss

  pkg "appserver-dist_#{version}_x86_64.pkg"

  uninstall pkgutil: [
                       'com.techdivision.appserver-io.runtime',
                       'com.techdivision.appserver-io.source',
                     ]
end
