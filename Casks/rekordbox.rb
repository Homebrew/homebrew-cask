cask :v1 => 'rekordbox' do
  version '3.2.2'
  sha256 'f12cafb0764177bafbb267342c3bd367572c42cc9e340081a0e84ef2bf7ed433'

  url "http://rekordbox.com/_app/files/Install_rekordbox_#{version.gsub('.','_')}.pkg.zip"
  name 'rekordbox'
  homepage 'http://rekordbox.com/en/'
  license :closed

  pkg "Install_rekordbox_#{version.gsub('.','_')}.pkg"

  uninstall :pkgutil => 'com.pioneer.rekordbox.*',
            :delete  => '/Applications/rekordbox 3/'
end
