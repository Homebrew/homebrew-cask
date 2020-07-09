cask 'qownnotes' do
  version '20.7.2,b5769-075718'
  sha256 'a278c03970e7edd854c63e5dc5239e1e1a70b3112e7daec5d80e5f7787689100'

  # github.com/pbek/QOwnNotes/ was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://www.qownnotes.org/api/v1/last_release/QOwnNotes/macosx.json'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'QOwnNotes.app'
end
