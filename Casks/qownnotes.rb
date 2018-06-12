cask 'qownnotes' do
  version '18.05.7,b3605-162547'
  sha256 '714cba3282ad0782cafc8f2f1349c1fe1ff91c44fcf8cc9ae43900ab662b007f'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
