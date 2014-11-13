cask :v1 => 'opennx' do
  version '0.16.0.729'
  sha256 '65dde1a3504a17ac58ed2a7178536347d829ee8c27cc90bebdae3e98c36fc6c6'

  url "http://downloads.sourceforge.net/sourceforge/opennx/OpenNX-#{version}.dmg"
  homepage 'http://opennx.net/'
  license :oss

  pkg 'OpenNX.pkg'
  uninstall :script => { :executable => '/Library/OpenNX/bin/macuninstall', :args => ['--batch'] },
            :pkgutil => 'org.opennx.OpenNX'
end
