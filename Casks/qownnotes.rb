cask 'qownnotes' do
  version '19.9.15,b4557-160159'
  sha256 '4da6d940bfb4eda0dbc2c26d180a5948c855a10df8a74f0d240dcf9ff781e5f0'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://www.qownnotes.org/api/v1/last_release/QOwnNotes/macosx.json'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'QOwnNotes.app'
end
