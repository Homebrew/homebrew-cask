class Flip4mac < Cask
  url 'http://dvd-mac.com/download/Flip4Mac_3.2.0.16.dmg'
  homepage 'http://www.telestream.net/flip4mac/'
  version '3.2.0.16'
  sha256 'd1574ca9896f8f40bf4d868e8ff91b1da1ac1dcd91a5b7898f3580543b02988e'
  install 'Flip4Mac.pkg'
  uninstall(
    :pkgutil => 'net.telestream.Flip4Mac'
  )
end
