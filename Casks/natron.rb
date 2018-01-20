cask 'natron' do
  version '2.3.4'
  sha256 '8c7febdc66cc651777ad66a9a462bf170990bf3a452c315fd751206dca803972'

  url "https://downloads.natron.fr/Mac/releases/Natron-#{version}.dmg",
      referer: 'https://natron.fr/download/?os=Mac'
  appcast 'https://github.com/MrKepzie/Natron/releases.atom',
          checkpoint: 'b891b1da77199c0f4e027c17053cf1dc506616c97bf88b851eaa154a4ff90db2'
  name 'Natron'
  homepage 'https://natron.fr/'

  app 'Natron.app'
end
