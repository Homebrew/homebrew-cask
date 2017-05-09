cask 'qownnotes' do
  version '17.04.4,b2877-102903'
  sha256 'd0e285f13041f32bca42c3eb633df21f71684b604208319d3f9a252a9e5ce511'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom',
          checkpoint: 'f1707ba418b8dfccb94e084218c6a07c5088fe0404f4af9a5929de610721e102'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
