cask 'menubarfilter' do
  version :latest
  sha256 :no_check

  # github.com/downloads/wez/MenuBarFilter was verified as official when first introduced to the cask
  url 'https://github.com/downloads/wez/MenuBarFilter/MenuBarFilter.zip'
  name 'Menubarfilter'
  homepage 'https://wez.github.io/MenuBarFilter/'

  app 'MenuBarFilter.app'
end
