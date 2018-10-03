cask 'runelite' do
  version '1.6.0'
  sha256 '1f8340f7adda8f1816dce6313a4f18cd3b10249a585cc9ec1369b55699e05feb'

  # github.com/runelite/launcher was verified as official when first introduced to the cask
  url "https://github.com/runelite/launcher/releases/download/#{version}/RuneLite.dmg"
  appcast 'https://github.com/runelite/launcher/releases.atom'
  name 'RuneLite'
  homepage 'https://runelite.net/'

  app 'RuneLite.app'
end
