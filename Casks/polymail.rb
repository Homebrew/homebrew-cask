cask 'polymail' do
  version '1.40'
  sha256 '0d65877b693ce57d766f4e583f5ac977ec40a04123f82d52cfbd6d9a4af517d2'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: '9d99f7c42935c08a94bf37627c88f8e007bcf8711c8c3443bfe0808e6e326632'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
