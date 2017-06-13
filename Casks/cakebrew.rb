cask 'cakebrew' do
  version '1.2.3'
  sha256 '12b35753178ebb73cb71631c363ab8bdee1e06597015780c259e4483c1fa522a'

  # cakebrew-377a.kxcdn.com was verified as official when first introduced to the cask
  url "https://cakebrew-377a.kxcdn.com/cakebrew-#{version}.dmg"
  appcast 'https://www.cakebrew.com/appcast/profileInfo.php',
          checkpoint: 'a1aaa9cb869aa3740faf459cf4fdbed932d5bd00375854ad6ca58a1b562624b4'
  name 'Cakebrew'
  homepage 'https://www.cakebrew.com/'

  depends_on macos: '>= :mountain_lion'

  app 'Cakebrew.app'

  zap delete: [
                '~/Library/Caches/com.brunophilipe.Cakebrew',
                '~/Library/Preferences/com.brunophilipe.Cakebrew.plist',
                '~/Library/Saved Application State/com.brunophilipe.Cakebrew.savedState',
              ]
end
