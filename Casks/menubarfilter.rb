cask 'menubarfilter' do
  version :latest
  sha256 :no_check

  url 'https://github.com/downloads/wez/MenuBarFilter/MenuBarFilter.zip'
  name 'Menubarfilter'
  homepage 'https://wez.github.com/MenuBarFilter/'
  license :apache

  app 'MenuBarFilter.app'
end
