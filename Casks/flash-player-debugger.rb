class FlashPlayerDebugger < Cask
  url 'http://fpdownload.macromedia.com/pub/flashplayer/updaters/14/flashplayer_14_sa_debug.dmg'
  homepage 'https://www.adobe.com/support/flashplayer/downloads.html'
  version '14.0.0.125'
  sha256 'c10647ecb3c77d2f70437b5146add5785336b3e77f9b0e9ade53f7404f711d90'
  link 'Flash Player.app', :target => 'Flash Player Debugger.app'
end
