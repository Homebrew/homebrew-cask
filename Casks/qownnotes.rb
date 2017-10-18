cask 'qownnotes' do
  version '17.09.5,b3236-200126'
  sha256 '354492236495ce80fa8a04538898784f5d1f72b5c3b6c916f5b5e30472efe4a3'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom',
          checkpoint: '9779fbe629a2ddc7e3743138aa31e566afde434fd287ad480b03a0f8cbc696b6'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
