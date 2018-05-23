cask 'cakebrew' do
  version '1.2.5'
  sha256 '2dc287acf04952a2b449a0d69cf1581915ef1e6c59d2ec1c83c3e37c263826ca'

  # cakebrew-377a.kxcdn.com was verified as official when first introduced to the cask
  url "https://cakebrew-377a.kxcdn.com/cakebrew-#{version}.dmg"
  appcast 'https://www.cakebrew.com/appcast/profileInfo.php',
          checkpoint: '425c0d51a81dda9dc7747fb6deb77d8569d241f35cfe37221fabede63cba2aa4'
  name 'Cakebrew'
  homepage 'https://www.cakebrew.com/'

  auto_updates true
  depends_on macos: '>= :mountain_lion'

  app 'Cakebrew.app'

  zap trash: [
               '~/Library/Caches/com.brunophilipe.Cakebrew',
               '~/Library/Preferences/com.brunophilipe.Cakebrew.plist',
               '~/Library/Saved Application State/com.brunophilipe.Cakebrew.savedState',
             ]
end
