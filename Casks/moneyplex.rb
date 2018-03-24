cask 'moneyplex' do
  version :latest
  sha256 :no_check

  # matrica.com was verified as official when first introduced to the cask
  url 'http://www.matrica.com/download/mac/moneyplex.dmg'
  name 'moneyplex'
  homepage 'https://www.matrica.de/'

  pkg 'moneyplex.pkg'

  uninstall pkgutil: 'de.matrica.moneyplex.*'
end
