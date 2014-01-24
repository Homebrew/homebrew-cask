class Ios7Screensaver < Cask
  url 'http://www.weebly.com/uploads/2/5/7/9/25796706/ios_7_lockscreen_by_bodysoulspirit.dmg'
  homepage 'http://bodysoulspirit.weebly.com/ios-7-screensaver-for-mac-os-x-by-bodysoulspirit.html'
  version '2.8'
  sha1 '9f50899e6bb018e34aaea8f8c33c5d0cb5b803c7'
  caveats <<-EOS.undent
    To complete the installation of #{title}, you need to install "Install iOS 7 screensaver.app". You also will have to go to "System Preferences" > "Desktop & Screen Saver" > "Screen Saver" and choose "iOS7 lockscreensaver" to make it work.
    EOS
end
