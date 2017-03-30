cask 'polymail' do
  version '1.28'
  sha256 '7ef0e504fbea42e1f7bdc52a26bf2f17845982f1282a4faaeb9468bfd1c9463c'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: '5cc48c3a3382f7c9c63f2456e20081277ca6b2cc96cb8ad2809580e6cc3789e5'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
