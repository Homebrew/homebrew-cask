cask 'polymail' do
  version '1.22'
  sha256 '62bd58476bc7052f665a93a1cbb78adf15bc9fd42f16346b80d30db7183f3436'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: '09d98ffd79ce80528ace3fe94d81b2e7ad6855c87504106dfc3473971ba53acd'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
