cask 'qownnotes' do
  version '17.05.5,b2937-190117'
  sha256 '15f2782078792c5ae9af4b9552c5efcfd804f7529648e774b4d59447696ec516'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom',
          checkpoint: '5040dfec5f8f18ee055225e7758ec679bdf1361c1aab97605738d278f552be1c'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
