cask 'pagico' do
  version :latest
  sha256 :no_check

  url 'https://www.pagico.com/downloads/latest/Pagico_macOS.dmg'
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :lion'

  pkg 'Install Pagico.pkg'

  uninstall pkgutil: 'com.pagico.*'
end
