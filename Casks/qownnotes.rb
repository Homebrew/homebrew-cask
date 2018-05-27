cask 'qownnotes' do
  version '18.05.7,b3605-162547'
  sha256 '714cba3282ad0782cafc8f2f1349c1fe1ff91c44fcf8cc9ae43900ab662b007f'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom',
          checkpoint: '74a44c488a8df011b4e10352db7a10d7ad0e8ab7cf1f22ed17e4133d7a2e4a78'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
