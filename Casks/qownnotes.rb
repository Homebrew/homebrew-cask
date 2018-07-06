cask 'qownnotes' do
  version '18.07.2,b3679-095757'
  sha256 '07e23aecf0ffee9cbf37454a9878ad219864b1fec761a4ed0566c66add36e6eb'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
