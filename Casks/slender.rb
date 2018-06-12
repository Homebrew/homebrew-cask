cask 'slender' do
  version '2.2.2'
  sha256 '7d3486efb8d6b4cdce8179b423616642238081e510292d215a9c78210913afb5'

  # downloads.dragonforged.com/ was verified as official when first introduced to the cask
  url "http://downloads.dragonforged.com/slender#{version.no_dots}.zip"
  appcast 'http://dragonforged.com/slender/sparkle/?bundleId=com.dfsw.Slender'
  name 'Slender'
  homepage 'http://martiancraft.com/products/slender.html'

  app 'Slender.app'
end
