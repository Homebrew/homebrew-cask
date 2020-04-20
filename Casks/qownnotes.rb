cask 'qownnotes' do
  version '20.4.10,b5528-084126'
  sha256 '5c18bc2e8540f7e0dff234b041a41ca7786b6263c8d4ed6a9d088120a51d7d65'

  # github.com/pbek/QOwnNotes/ was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://www.qownnotes.org/api/v1/last_release/QOwnNotes/macosx.json'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'QOwnNotes.app'
end
