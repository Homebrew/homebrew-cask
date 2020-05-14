cask 'strawberry' do
  version '0.6.10'
  sha256 '17b11068f088f17773886eed4c50dea2367dc4efd3f8bc4d8a8f3af3bbc9911c'

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
