cask 'kato' do
  version :latest
  sha256 :no_check

  url 'http://labs.kato.im/Kato.pkg'
  name 'Kato'
  homepage 'https://app.kato.im/'

  pkg 'Kato.pkg'

  uninstall pkgutil: 'Kato'
end
