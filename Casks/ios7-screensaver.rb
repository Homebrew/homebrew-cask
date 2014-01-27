class Ios7Screensaver < Cask
  url 'http://www.weebly.com/uploads/2/5/7/9/25796706/ios_7_lockscreen_by_bodysoulspirit.dmg'
  homepage 'http://bodysoulspirit.weebly.com/ios-7-screensaver-for-mac-os-x-by-bodysoulspirit.html'
  version '2.8'
  sha1 'bcf3041dbc3f0a45699ba8bb43704fc90299ce0c'
  caskroom_only true
  caveats do
    manual_installer('Install iOS 7 screensaver.app')
    puts <<-EOS.undent
      You also will have to go to "System Preferences" > "Desktop & Screen Saver" > "Screen Saver"
      and choose "iOS7 lockscreensaver" to make it work.
    EOS
  end
end
