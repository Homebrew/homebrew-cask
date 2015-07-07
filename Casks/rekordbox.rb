cask :v1 => 'rekordbox' do
  version '3.2.1'
  sha256 '1fadb6590be4ab7eb9d746c578e81a2558d176df643cd85593c5fdc0bfbd3c50'

  url "http://rekordbox.com/_app/files/Install_rekordbox_#{version.gsub('.','_')}.pkg.zip"
  name 'rekordbox'
  homepage 'http://rekordbox.com/en/'
  license :closed

  pkg "Install_rekordbox_#{version.gsub('.','_')}.pkg"

  uninstall :pkgutil => 'com.pioneer.rekordbox.*',
            :delete  => '/Applications/rekordbox 3/'
end
