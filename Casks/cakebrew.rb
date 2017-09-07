cask 'cakebrew' do
  version '1.2.4'
  sha256 '00a400b2fed5f103ae705729c0ede1616e5819a758b50d5583557832ae282c0b'

  # cakebrew-377a.kxcdn.com was verified as official when first introduced to the cask
  url "https://cakebrew-377a.kxcdn.com/cakebrew-#{version}.dmg"
  appcast 'https://www.cakebrew.com/appcast/profileInfo.php',
          checkpoint: '461890a01e3c15163fdc3186dedbfc0234b8f80d18ee5595e72c74eabd27f814'
  name 'Cakebrew'
  homepage 'https://www.cakebrew.com/'

  auto_updates true
  depends_on macos: '>= :mountain_lion'

  app 'Cakebrew.app'

  zap delete: [
                '~/Library/Caches/com.brunophilipe.Cakebrew',
                '~/Library/Preferences/com.brunophilipe.Cakebrew.plist',
                '~/Library/Saved Application State/com.brunophilipe.Cakebrew.savedState',
              ]
end
