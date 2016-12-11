cask 'qownnotes' do
  version '16.12.4,b2595-105324'
  sha256 'd353c06ee8a2a82c42dda8cd6dc1b3b94eff330e4d2f033f453d6880022e6dda'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom',
          checkpoint: '0b2a064392a8ea477addcd1a1c17b706fa219b17a5aa7416a544afd7b25c69a8'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
