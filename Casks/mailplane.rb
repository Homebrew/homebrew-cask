cask 'mailplane' do
  version '4.1.2,4704'
  sha256 'f01d6741817f1e671036610d904c3694244477f752e3a706aeafcc9d048bdfde'

  url "https://update.mailplaneapp.com/builds/Mailplane_#{version.major}_#{version.after_comma}.tbz"
  appcast "https://update.mailplaneapp.com/appcast.php?rqsr=1&osVersion=10.14.1&appVersion=#{version.after_comma}&shortVersionString=#{version.before_comma}"
  name 'Mailplane'
  homepage 'https://mailplaneapp.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Mailplane.app'

  zap trash: '~/Library/Preferences/com.mailplaneapp.Mailplane.plist'
end
