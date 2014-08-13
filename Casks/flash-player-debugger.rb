class FlashPlayerDebugger < Cask
  version '14.0.0.176'
  sha256 '4ea23e909aa54c130de0d7a6453409207d303523cce15c4621ad4a55e0681fcf'

  url 'https://fpdownload.macromedia.com/pub/flashplayer/updaters/14/flashplayer_14_sa_debug.dmg'
  homepage 'https://www.adobe.com/support/flashplayer/downloads.html'

  link 'Flash Player.app', :target => 'Flash Player Debugger.app'
end
