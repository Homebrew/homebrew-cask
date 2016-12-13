cask 'qownnotes' do
  version '16.12.6,b2604-191210'
  sha256 '8621a23afc395a11649a7f44c8ef893bddd86fa7105f735eb5ac428894a1e8c3'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom',
          checkpoint: '3e2138dd267e598c3dfc5f7cae14eef091f6d87febf17f6574edce0cb11cd387'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
