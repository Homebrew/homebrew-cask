class Glimmerblocker < Cask
  url 'http://glimmerblocker.org/downloads/GlimmerBlocker-1.5.3.dmg'
  homepage 'http://glimmerblocker.org'
  version '1.5.3'
  sha256 '872f3edc5f6dc3b92ba17eaf00236308e561bf353ffb1579cc5d7afc27bbf0a5'
  install 'GlimmerBlocker.pkg'
  uninstall :pkgutil => 'org.glimmerblocker.pkg'
end
