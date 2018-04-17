cask 'qownnotes' do
  version '18.04.2,b3549-154607'
  sha256 '8c4c57daa0282d871ea415a3b1b74a4913285df16adb5215e3526fac10ffeccc'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom',
          checkpoint: '50a932d79bbe435e0f7a4460684b5980081452de15666db4a41622328ac52834'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
