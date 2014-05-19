class FlashPlayerDebugger < Cask
  url 'http://fpdownload.macromedia.com/pub/flashplayer/updaters/13/flashplayer_13_sa_debug.dmg'
  homepage 'https://www.adobe.com/support/flashplayer/downloads.html'
  version '13.0.0.214'
  sha256 '8640692a58115e0a2577702fb298d4e44b310082b25f765decb046c8d54b3dec'
  link 'Flash Player.app', :target => 'Flash Player Debugger.app'
end
