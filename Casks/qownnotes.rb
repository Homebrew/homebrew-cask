cask 'qownnotes' do
  version '18.10.4,b3884-075416'
  sha256 '1a12adb29bc0e1ffa4fad556d9126f8a92815bb18fe2494c81ee49ea15cc0554'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
