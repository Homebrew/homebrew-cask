cask 'qownnotes' do
  version '18.08.11,b3802-172422'
  sha256 '1957228afa22ff5805ed0e5213c8b9519c27d259cbdaa8adb1c2055a9dd3b5d8'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
