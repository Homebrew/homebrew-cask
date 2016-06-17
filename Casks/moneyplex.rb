cask 'moneyplex' do
  version :latest
  sha256 :no_check

  # matrica.com was verified as official when first introduced to the cask
  url 'http://www.matrica.com/download/mac/moneyplex.dmg'
  name 'moneyplex'
  homepage 'http://www.matrica.de/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'moneyplex.pkg', allow_untrusted: true

  uninstall pkgutil: 'de.matrica.moneyplex.Moneyplex.pkg'
end
