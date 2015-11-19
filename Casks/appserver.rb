cask :v1 => 'appserver' do
  version '1.1.0-100'
  sha256 'c2333a17470d74fa83e51187183f71601500241fd05e922bbb341ccd34aaaa9f'

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
