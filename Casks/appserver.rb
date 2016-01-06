cask 'appserver' do
  version '1.1.0-100'
  sha256 'c2333a17470d74fa83e51187183f71601500241fd05e922bbb341ccd34aaaa9f'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/appserver-io/appserver/releases/download/#{version.sub(%r{-.*}, '')}/appserver-dist_#{version}_x86_64.pkg"
  appcast 'https://github.com/appserver-io/appserver/releases.atom',
          :sha256 => '059721ccf749495aeefc607cefc77680a376ce6417f6d4755a7be8771cec9431'
  name 'appserver.io'
  homepage 'http://www.appserver.io'
  license :oss

  pkg "appserver-dist_#{version}_x86_64.pkg"

  uninstall :pkgutil => [
                          'com.techdivision.appserver-io.runtime',
                          'com.techdivision.appserver-io.source',
                        ]
end
