cask 'mailplane' do
  version '4.2.4,4812'
  sha256 '129f545e105f744e3546d48f891aa016a66a4a511209b52fc6883641f6174728'

  url "https://update.mailplaneapp.com/builds/Mailplane_#{version.major}_#{version.after_comma}.tbz"
  appcast "https://update.mailplaneapp.com/appcast.php?rqsr=1&osVersion=10.14.1&appVersion=#{version.after_comma}&shortVersionString=#{version.before_comma}"
  name 'Mailplane'
  homepage 'https://mailplaneapp.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Mailplane.app'

  zap trash: '~/Library/Preferences/com.mailplaneapp.Mailplane.plist'
end
