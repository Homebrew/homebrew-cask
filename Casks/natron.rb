cask 'natron' do
  version '2.2.5'
  sha256 'a6d5e7898fdc2a1ebd4ef427df3ec7402db51684eb5b12a64ef97024c7878d7d'

  url "https://downloads.natron.fr/Mac/releases/Natron-#{version}.dmg",
      referer: 'https://natron.fr/download/?os=Mac'
  appcast 'https://github.com/MrKepzie/Natron/releases.atom',
          checkpoint: '8623d800936db165a0494334b9d655d40edb82a665480b2624f351a298458951'
  name 'Natron'
  homepage 'https://natron.fr/'

  app 'Natron.app'
end
