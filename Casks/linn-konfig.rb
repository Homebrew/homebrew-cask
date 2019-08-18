cask 'linn-konfig' do
  version :latest
  sha256 :no_check

  url 'https://cloud.linn.co.uk/applications/konfig/releases/Davaar/konfig_latest_osx.pkg'
  name 'Linn Konfig'
  homepage 'https://www.linn.co.uk/software'

  pkg 'konfig_latest_osx.pkg'

  uninstall pkgutil: 'uk.co.linn.Konfig'
end
