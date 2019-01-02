cask 'mailplane' do
  version '4.1.0,4642'
  sha256 'ba1a98b9f85dfa2362aa59732c7d7e8c62408fb82bfa6dbb535e8c9b0e049612'

  url "https://update.mailplaneapp.com/builds/Mailplane_#{version.major}_#{version.after_comma}.tbz"
  appcast "https://update.mailplaneapp.com/appcast.php?rqsr=1&osVersion=10.14.1&appVersion=#{version.after_comma}&shortVersionString=#{version.before_comma}"
  name 'Mailplane'
  homepage 'https://mailplaneapp.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Mailplane.app'

  zap trash: '~/Library/Preferences/com.mailplaneapp.Mailplane.plist'
end
