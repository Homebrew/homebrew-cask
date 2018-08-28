cask 'qownnotes' do
  version '18.08.10,b3796-173927'
  sha256 '24b972ce545ef0a2762b3116962d7384dbb49ac9ce40023a4569cda6ce3c3ba0'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
