cask 'qownnotes' do
  version '17.12.2,b3382-173425'
  sha256 'c904bffbe8d40284d228b0641ecbb954143832879abde8a049d4370a30346442'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom',
          checkpoint: '306338026d8a4fb3cc89fbe2a7633bd6654cea6b6a3749c1baaadb02353eb516'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
