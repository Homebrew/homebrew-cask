cask 'polymail' do
  version '1.32'
  sha256 '34b17d9cd711c4cbb60115ac47938f0331ca5b04ad166d027b85d74098064d94'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: '37d243d8f94346080a0137bf9aa5966606d4ea8e06f9dc7af556a3a63b902aa3'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
