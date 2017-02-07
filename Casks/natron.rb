cask 'natron' do
  version '2.2.2'
  sha256 '5b9b57a201206d534b885cfb2edf4d38816a3325d863b091c6c58652cb2a5088'

  url "https://downloads.natron.fr/Mac/releases/Natron-#{version}.dmg",
      referer: 'https://natron.fr/download/?os=Mac'
  appcast 'https://github.com/MrKepzie/Natron/releases.atom',
          checkpoint: '877111c56c7d4612d63dc5454402edcc2ef480632be03abadcfd4c06c61ee41f'
  name 'Natron'
  homepage 'https://natron.fr/'

  app 'Natron.app'
end
