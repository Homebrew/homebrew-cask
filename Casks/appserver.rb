cask :v1 => 'appserver' do
  version '1.0.5-14'
  sha256 '7c89590446687749a7f4b6624c276675d1faf4b955ce69642e0410d1b6489ae4'

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
