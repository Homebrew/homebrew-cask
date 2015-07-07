cask :v1 => 'glimmerblocker' do
  version '1.6.5'
  sha256 'bcb9f53c4eb33a907fdaa42b7e5deb5b48d2495269e8746206691b393e2db507'

  url "https://glimmerblocker.org/downloads/GlimmerBlocker-#{version}.dmg"
  name 'GlimmerBlocker'
  homepage 'https://glimmerblocker.org/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'GlimmerBlocker.pkg'

  uninstall :pkgutil => 'org.glimmerblocker.pkg'
end
