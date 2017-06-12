cask 'polymail' do
  version '1.38'
  sha256 'de5f4279c10af0132bacfc56d58ffb1915e4d7ea4013a30aff00a47b69462ba8'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: 'c0633242fd02b71f08873078a7cfb6b7000c2c0e44769c2cccce33dd3b85b238'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
