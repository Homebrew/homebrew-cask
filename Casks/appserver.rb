cask :v1 => 'appserver' do
  version '1.0.2'
  sha256 '1a578fdb626b0fab16422d003d09e89cff4f83afddc4095ae283352fe42ad3d8'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/appserver-io/appserver/releases/download/#{version}/appserver-dist_#{version}-56_x86_64.pkg"
  appcast 'https://github.com/appserver-io/appserver/releases.atom'
  name 'appserver.io'
  homepage 'http://www.appserver.io'
  license :oss

  pkg "appserver-dist_#{version}-56_x86_64.pkg"

  uninstall :pkgutil => [
                         'com.techdivision.appserver-io.runtime',
                         'com.techdivision.appserver-io.source'
                        ]
end
