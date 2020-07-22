cask 'splayer' do
  version '4.9.2'
  sha256 '92b6c3c564334593a415e05959a2cd325346b64b22f86438aa1f0acf9027a878'

  # github.com/chiflix/splayerx/ was verified as official when first introduced to the cask
  url "https://github.com/chiflix/splayerx/releases/download/#{version}/SPlayer-#{version}.dmg"
  appcast 'https://github.com/chiflix/splayerx/releases.atom'
  name 'SPlayer'
  homepage 'https://splayer.org/'

  app 'SPlayer.app'
end
