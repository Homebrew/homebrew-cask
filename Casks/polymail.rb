cask 'polymail' do
  version '0.91'
  sha256 '625225ff2081f410675f3aca6e6f64ed992c6d5459594078fe757f7481d331b0'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: 'beacee116fde092b6316df05ecbbbb6eea8feed18bdcf842db7c68d959332a08'
  name 'Polymail'
  homepage 'https://polymail.io/'
  license :closed

  auto_updates true

  app 'Polymail.app'
end
