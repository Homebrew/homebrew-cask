cask 'strawberry' do
  version '0.6.9'
  sha256 'ce9c6ca46a86b7b7f9456e9351d181ca33400508263f44dde91c3e495d994d20'

  # github.com/strawberrymusicplayer/strawberry/ was verified as official when first introduced to the cask
  url "https://github.com/strawberrymusicplayer/strawberry/releases/download/#{version}/strawberry-#{version}.dmg"
  appcast 'https://github.com/strawberrymusicplayer/strawberry/releases.atom'
  name 'Strawberry'
  homepage 'https://www.strawberrymusicplayer.org/'

  app 'strawberry.app'

  zap trash: [
               '~/Library/Application Support/Strawberry',
               '~/Library/Caches/Strawberry',
               '~/Library/Preferences/org.strawberrymusicplayer.Strawberry.plist',
               '~/Library/Saved Application State/org.strawberrymusicplayer.strawberry.savedState',
             ]
end
