cask 'polymail' do
  version '1.10'
  sha256 '424c2c76fb90a2549c1beafba3f0ad92ffdc53b1494055e8f1f49b3c03e33f94'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: 'a4b5d9383f754e13dd4a4d4a36ce3b6edfd5022712fd8e313a14e45534414e6c'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
