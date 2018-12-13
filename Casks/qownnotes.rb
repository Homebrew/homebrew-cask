cask 'qownnotes' do
  version '18.12.3,b3976-172531'
  sha256 '901b14891352e15fec12aa0cced75e89a6a80a15b7e6120c2bd3781458645e87'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  depends_on macos: '>= :sierra'

  app 'QOwnNotes.app'
end
