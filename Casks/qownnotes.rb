cask 'qownnotes' do
  version '18.05.2,b3579-160121'
  sha256 '0f7026ac81d9f835ed9799e8e44c69cdcd85d11d97cfdae7ffec847e7cbe2d9b'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom',
          checkpoint: '8e3f080d4761475bf9f1a577caf04c37fb03e6780a450be920cdc4f0875c9ac9'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
