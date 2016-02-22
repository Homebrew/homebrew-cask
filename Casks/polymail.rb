cask 'polymail' do
  version '0.71'
  sha256 '124d6fa0eb3a22cc7c14e58039ae0e652827bc155fb27670f04470ea16a64d03'

  url 'https://sparkle-updater.polymail.io/osx/Polymail-Latest.zip'
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: '3083cb7812a35577fd901428d3c28d7ac8b0cc31578a4c05b17b7dd0e4a8ecb1'
  name 'Polymail'
  homepage 'https://polymail.io/'
  license :closed

  app 'Polymail.app'
end
