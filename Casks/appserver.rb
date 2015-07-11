cask :v1 => 'appserver' do
  version '1.0.6-21'
  sha256 '33bd22f0b8852f37c6bbfcc1c9aa9e63a4916e12821642260a5054304916267b'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/appserver-io/appserver/releases/download/#{version.sub(/-.*/, '')}/appserver-dist_#{version}_x86_64.pkg"
  appcast 'https://github.com/appserver-io/appserver/releases.atom'
  name 'appserver.io'
  homepage 'http://www.appserver.io'
  license :oss

  pkg "appserver-dist_#{version}_x86_64.pkg"

  uninstall :pkgutil => [
                         'com.techdivision.appserver-io.runtime',
                         'com.techdivision.appserver-io.source'
                        ]
end
