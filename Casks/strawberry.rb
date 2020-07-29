cask 'strawberry' do
  version '0.6.12'
  sha256 '15305bd63efbdee5004b1c2749c1674737587a88a5baf6f2915463fe0c12f04d'

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
