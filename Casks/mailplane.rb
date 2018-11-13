cask 'mailplane' do
  version '4.4516'
  sha256 '8a4272daee8c38b4235cd824b8ca52a49e5562a22d72c27571ed869d5611df1f'

  url "https://update.mailplaneapp.com/builds/Mailplane_#{version.dots_to_underscores}.tbz"
  appcast 'https://update.mailplaneapp.com/appcast.php?rqsr=1&osVersion=10.14.1&appVersion=4565&shortVersionString=4.0.6'
  name 'Mailplane'
  homepage 'https://mailplaneapp.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Mailplane.app'

  zap trash: '~/Library/Preferences/com.mailplaneapp.Mailplane.plist'
end
