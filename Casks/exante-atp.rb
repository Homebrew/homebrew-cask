cask 'exante-atp' do
  version :latest
  sha256 :no_check

  url 'https://updates.exante.eu/atp-install/atp-osx.pkg'
  name 'EXANTE ATP'
  homepage 'https://exante.eu/technology/ATP/'

  pkg 'atp-osx.pkg'

  uninstall pkgutil: 'eu.exante.atp.Client.prod'
end
