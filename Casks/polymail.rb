cask 'polymail' do
  version '1.14'
  sha256 'abdf1f0e447dd2b14ce74361b15c8013964a6b09541e00b901b553241c29b1f4'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: 'dfde0f15c561a0c632bb71b15862c5940ef9f68574be5e28d9661b3f1474e71b'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
