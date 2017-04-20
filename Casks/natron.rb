cask 'natron' do
  version '2.2.7'
  sha256 '5347361fe84701be6afbd569681af0152af5e7899815458cae9211d399af1d4b'

  url "https://downloads.natron.fr/Mac/releases/Natron-#{version}.dmg",
      referer: 'https://natron.fr/download/?os=Mac'
  appcast 'https://github.com/MrKepzie/Natron/releases.atom',
          checkpoint: 'c7218d11a2702e4c6d8089bcfced683cff365a8594655d1cfc7dfa4f0df55074'
  name 'Natron'
  homepage 'https://natron.fr/'

  app 'Natron.app'
end
