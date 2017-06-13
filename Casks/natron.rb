cask 'natron' do
  version '2.2.8'
  sha256 '2db9bd55951edb2142b3f8be6d4ec778c80f3bd242b79c29af901105db65b1bf'

  url "https://downloads.natron.fr/Mac/releases/Natron-#{version}.dmg",
      referer: 'https://natron.fr/download/?os=Mac'
  appcast 'https://github.com/MrKepzie/Natron/releases.atom',
          checkpoint: '75b1133136e5a790bc8cf6519cc7933d95d2a061801eeb291805f510376a4e29'
  name 'Natron'
  homepage 'https://natron.fr/'

  app 'Natron.app'
end
