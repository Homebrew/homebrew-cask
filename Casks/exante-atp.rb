cask 'exante-atp' do
  version :latest
  sha256 :no_check

  url 'https://updates.exante.eu/atp-install/atp-osx.pkg'
  name 'EXANTE ATP'
  homepage 'https://updates.exante.eu'

  pkg 'atp-osx.pkg'
  uninstall pkgutil: 'eu.exante.atp.Client.prod'

end
