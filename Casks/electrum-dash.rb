cask 'electrum-dash' do
  version '2.4.1'
  sha256 '14c8685adc1aeaf15230378e3931ff4c20fd0f2efa74947005d4184dca7920c7'

  url "https://www.dash.org/binaries/Electrum-DASH-#{version}-Installer.pkg"
  name 'Electrum-DASH'
  homepage 'https://www.dash.org/'
  gpg 'https://raw.githubusercontent.com/dashpay/dash-binaries/master/pgp/releases-maza-club.asc', key_id: '71fafcb71f0a961b23e7d7ef0a020276cbffb73c'

  pkg "Electrum-DASH-#{version}-Installer.pkg"

  uninstall pkgutil: 'org.pythonmac.unspecified.Electrum-DASH'
end
