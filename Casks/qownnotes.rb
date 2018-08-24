cask 'qownnotes' do
  version '18.08.6,b3767-171840'
  sha256 '385534075916f201a63aa86a4f582b2f5461bac975aef8f66df4c5ad4c1b2c80'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
