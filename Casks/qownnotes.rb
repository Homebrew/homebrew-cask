cask 'qownnotes' do
  version '17.07.6,b3105-073004'
  sha256 'ba13ef08af0615f8d6a47d0b8df811e46fee7700e9d822dd852fd720be2cea93'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom',
          checkpoint: '9a0695bf2a548874245f72af0460e5d1c5421e2b9e875bb44450c3ac1d02cd39'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
