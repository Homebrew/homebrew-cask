cask 'qownnotes' do
  version '18.12.2,b3967-195325'
  sha256 '71bc2bcbd8b61ec68d4e73ce6adac079b205832e6fce932aab70624d1d0638b3'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
