cask 'strawberry' do
  version '0.6.13'
  sha256 'cdf2d8cfc6189f9d20d83c51d880779bb71841787f31ec351f8a899029bd348c'

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
