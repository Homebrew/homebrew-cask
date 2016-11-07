cask 'cakebrew' do
  version '1.2.3'
  sha256 '12b35753178ebb73cb71631c363ab8bdee1e06597015780c259e4483c1fa522a'

  url "https://cdn.cakebrew.com/cakebrew-#{version}.dmg"
  appcast 'https://www.cakebrew.com/appcast/profileInfo.php',
          checkpoint: 'febdbeca94df821a28298c2454f8d0c0a7272379bbe743174e2764865aac5bcb'
  name 'Cakebrew'
  homepage 'https://www.cakebrew.com/'

  app 'Cakebrew.app'

  zap delete: [
                '~/Library/Caches/com.brunophilipe.Cakebrew',
                '~/Library/Preferences/com.brunophilipe.Cakebrew.plist',
              ]
end
