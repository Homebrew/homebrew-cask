cask 'appserver' do
  version '1.1.0-100'
  sha256 'c2333a17470d74fa83e51187183f71601500241fd05e922bbb341ccd34aaaa9f'

  # github.com/appserver-io/appserver was verified as official when first introduced to the cask
  url "https://github.com/appserver-io/appserver/releases/download/#{version.sub(%r{-.*}, '')}/appserver-dist_#{version}_x86_64.pkg"
  appcast 'https://github.com/appserver-io/appserver/releases.atom',
          checkpoint: 'a20e2c28531fe78b1ff33bace086a04a05c76d54602736c18185bb6101d67a35'
  name 'appserver.io'
  homepage 'http://www.appserver.io'
  license :oss

  pkg "appserver-dist_#{version}_x86_64.pkg"

  uninstall pkgutil: [
                       'com.techdivision.appserver-io.runtime',
                       'com.techdivision.appserver-io.source',
                     ]
end
