cask 'qownnotes' do
  version '17.06.2,b3039-094931'
  sha256 '75fba5fb7254483bc5dd112e665fff0ae9196b70e3240ce18d1ab3e4295a652e'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom',
          checkpoint: '2a5723eb27ec292017442db4b7b65f9ae09a473035c8d629e8330aaf83e0660a'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
