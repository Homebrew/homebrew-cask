class Glimmerblocker < Cask
  url 'http://glimmerblocker.org/downloads/GlimmerBlocker-1.5.3.dmg'
  homepage 'http://glimmerblocker.org'
  version '1.5.3'
  sha1 '04c51e09db1e1a2f2364855d77301831dcd427ad'
  install 'GlimmerBlocker.pkg'
  uninstall :pkgutil => 'org.glimmerblocker.pkg'
end
