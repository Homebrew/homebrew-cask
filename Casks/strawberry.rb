cask 'strawberry' do
  version '0.6.11'
  sha256 'aadc433133da034ad3dfb4d67cf5f7ac09b4fe669f285cc2a11c0e66f7adf0be'

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
