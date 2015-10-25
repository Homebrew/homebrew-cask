cask :v1 => 'electrum' do
  version '2.5.1'
  sha256 '61545df1d2e6f340b00307d93457418dea95a505917dcf80be79efcb6217161b'

  url "https://download.electrum.org/electrum-#{version}.dmg"
  gpg "#{url}.asc",
      :key_id => '6694d8de7be8ee5631bed9502bd5824b7f9470e6'
  name 'Electrum'
  homepage 'https://electrum.org/'
  license :gpl

  app 'Electrum.app'
end
