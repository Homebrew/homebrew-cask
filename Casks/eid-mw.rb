class EidMw < Cask
  version '4.0.6'
  sha256 'd88dad806fd4a8e01e636a22f9322a14f8bfdec596ce61f194c47a69d64668bb'

  url 'https://eid-mw.googlecode.com/files/beid-4.0.6-7422-signed.dmg'
  homepage 'https://code.google.com/p/eid-mw/'

  pkg 'beid-7422-signed.pkg'

  uninstall :pkgutil => 'be.eid.middleware'
end
