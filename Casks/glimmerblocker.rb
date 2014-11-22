cask :v1 => 'glimmerblocker' do
  version '1.5.3'
  sha256 '872f3edc5f6dc3b92ba17eaf00236308e561bf353ffb1579cc5d7afc27bbf0a5'

  url "http://glimmerblocker.org/downloads/GlimmerBlocker-#{version}.dmg"
  homepage 'http://glimmerblocker.org'
  license :unknown

  pkg 'GlimmerBlocker.pkg'

  uninstall :pkgutil => 'org.glimmerblocker.pkg'
end
