cask 'qownnotes' do
  version '18.10.5,b3893-154658'
  sha256 'c742d7ef98ba489ffeac7df422dbc4a6c9cba5ce14d17136917e026baff7430f'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
