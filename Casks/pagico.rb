cask 'pagico' do
  version '8.7.2171'
  sha256 '443bf9eb12e5f8a148edf65f0384719ad03ccc4cef113eef4862cdea804de160'

  url "https://www.pagico.com/downloads/Pagico_Desktop_r#{version.patch}.dmg"
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :lion'

  pkg 'Install Pagico.pkg'

  uninstall pkgutil: 'com.pagico.*'
end
