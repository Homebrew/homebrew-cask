cask 'qownnotes' do
  version '17.05.8,b2964-114007'
  sha256 '317f61d41786aab36cb04982173d32863aaf276a73148d8fe1fa70630d27275e'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom',
          checkpoint: 'd972189954857d9668198aa9da874db2e2b7c6b74d461479e932c30e2610f56f'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
