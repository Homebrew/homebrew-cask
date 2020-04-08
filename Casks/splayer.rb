cask 'splayer' do
  version '4.9.1'
  sha256 'f7755ae224794f221cdd7fbd83cabc1b38fd4e554cd2a74907f75291bccf23bd'

  url "https://cdn.splayer.org/download/SPlayer-#{version}.dmg"
  appcast 'https://github.com/chiflix/splayerx/releases.atom'
  name 'SPlayer'
  homepage 'https://splayer.org/'

  app 'SPlayer.app'
end
