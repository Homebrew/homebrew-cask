class FlashPlayerDebugger < Cask
  version '14.0.0.145'
  sha256 '07637f561f2b57a38396ae5642111d741ae79442787c2a01d99277b1fa9c4ac5'

  url 'https://fpdownload.macromedia.com/pub/flashplayer/updaters/14/flashplayer_14_sa_debug.dmg'
  homepage 'https://www.adobe.com/support/flashplayer/downloads.html'

  link 'Flash Player.app', :target => 'Flash Player Debugger.app'
end
