cask 'polymail' do
  version '1.03'
  sha256 '7cabd2294bd4dfb3f85a1684f6cf657ad530f4d2d3210697ca4405dcaf9f0495'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: '19115bcd562746116c6e618190073d0233c80f65990665b0c2912aa672b8bc20'
  name 'Polymail'
  homepage 'https://polymail.io/'
  license :closed

  auto_updates true

  app 'Polymail.app'
end
