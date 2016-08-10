cask 'polymail' do
  version '1.04'
  sha256 '4a061b3b4761ea8661c7a270d0d966b95c9e50915448b228de9d75b3a4fd17d1'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: 'a8b8d11ae029aebe21d1ff3612cb6b9c6b5237df089319bdceccb951535e0cf9'
  name 'Polymail'
  homepage 'https://polymail.io/'
  license :closed

  auto_updates true

  app 'Polymail.app'
end
