cask 'qownnotes' do
  version '17.06.1,b3034-151538'
  sha256 '0355e9986be0b31a480255a9bc762b9c5a4113af551f3f8caa5a79cbf8d6decb'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom',
          checkpoint: '322b61637084f1c1185bcdb28b10f80f6d62ef9cb5e9c40d640759122d6cfdc5'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
