cask 'qownnotes' do
  version '18.08.0,b3715-184052'
  sha256 'b844602137e095bf2d011d249a1a8e9c62c5b0cb0dacc82bb2ab8da4e4a548a4'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
