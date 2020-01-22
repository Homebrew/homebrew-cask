cask 'jubler' do
  version '7.0.0-alpha1'
  sha256 '27247aca18009d1f42531b6059d2a7418795b1fdda515a560562cfa08a670379'

  # github.com/teras/Jubler was verified as official when first introduced to the cask
  url "https://github.com/teras/Jubler/releases/download/v#{version}/Jubler-#{version}.1.dmg"
  appcast 'https://github.com/teras/Jubler/releases.atom'
  name 'Jubler'
  homepage 'https://www.jubler.org/'

  app 'Jubler.app'
end
