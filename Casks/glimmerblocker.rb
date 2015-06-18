cask :v1 => 'glimmerblocker' do
  version '1.5.3'
  sha256 '872f3edc5f6dc3b92ba17eaf00236308e561bf353ffb1579cc5d7afc27bbf0a5'

  url "https://glimmerblocker.org/downloads/GlimmerBlocker-#{version}.dmg"
  name 'GlimmerBlocker'
  homepage 'https://glimmerblocker.org/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'GlimmerBlocker.pkg'

  uninstall :pkgutil => 'org.glimmerblocker.pkg'
end
