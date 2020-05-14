cask 'petitplayer' do
  version '0.0.11'
  sha256 '796ade626c551955882e3f84d719b223f3059247a195c4b28a1cdaedfff560dc'

  url "https://github.com/getpetit/petit-youtube-music-release/releases/download/v#{version}/Petit-Player-#{version}.dmg"
  appcast 'https://github.com/getpetit/petit-youtube-music-release/releases.atom'
  name 'Petit Player'
  homepage 'https://getpetit.github.io'

  app 'Petit Player.app'
end

