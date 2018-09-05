cask 'ios-saver' do
  version :latest
  sha256 :no_check

  url 'http://littleendiangamestudios.com/download/ios_screensaver/',
      referer: 'http://littleendiangamestudios.com/project/ios-8-screen-saver/'
  name 'iOS 8 Lockscreen for OSX'
  homepage 'http://littleendiangamestudios.com/project/ios-8-screen-saver/'

  depends_on macos: '>= :yosemite'

  screen_saver 'iOS Saver.saver'
end
