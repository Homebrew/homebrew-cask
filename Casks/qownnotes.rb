cask 'qownnotes' do
  version '18.08.3,b3738-143950'
  sha256 '3de8fb14a9e8af5b50cc16115c6d0e5859f6696758041bb62df4d223bc51855d'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
