cask 'iexplorer' do
  version '4.2.6'
  sha256 '9bf4b1dfaede90a63495ca539b75441d7ad7515d52760cee24c8cf8779c65b6b'

  url "https://assets.macroplant.com/downloads/iExplorer-#{version}.dmg"
  name 'iExplorer'
  homepage 'https://macroplant.com/iexplorer'

  depends_on macos: '>= :mavericks'

  app 'iExplorer.app'
end
