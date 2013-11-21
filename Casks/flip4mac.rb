class Flip4mac < Cask
  url 'http://dvd-mac.com/download/Flip4Mac_3.2.0.16.dmg'
  homepage 'http://www.telestream.net/flip4mac/'
  version '3.2.0.16'
  sha1 'b4d24b715848a6a4723c21555a9787a5d541a8a8'
  install 'Flip4Mac.pkg'
  uninstall(
    :pkgutil => 'net.telestream.Flip4Mac'
  )
end
