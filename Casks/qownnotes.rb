cask 'qownnotes' do
  version '18.11.3,b3932-162936'
  sha256 '9ecbf794716c89e651853835ac6fe7875ecf8ad06195a4728a5742ecef2cb0e6'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
