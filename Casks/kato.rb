class Kato < Cask
  version :latest
  sha256 :no_check

  url 'http://labs.kato.im/Kato.pkg'
  homepage 'https://app.kato.im/'
  license :unknown

  pkg "Kato.pkg"

  uninstall :pkgutil => "Kato"
end
