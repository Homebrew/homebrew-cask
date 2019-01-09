cask 'mailplane' do
  version '4.1.1,4675'
  sha256 '31900b0b11148953c1f056fe67d4f3ee47e5631d7f89cc7b139068c4130cb4e1'

  url "https://update.mailplaneapp.com/builds/Mailplane_#{version.major}_#{version.after_comma}.tbz"
  appcast "https://update.mailplaneapp.com/appcast.php?rqsr=1&osVersion=10.14.1&appVersion=#{version.after_comma}&shortVersionString=#{version.before_comma}"
  name 'Mailplane'
  homepage 'https://mailplaneapp.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Mailplane.app'

  zap trash: '~/Library/Preferences/com.mailplaneapp.Mailplane.plist'
end
