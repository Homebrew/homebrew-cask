cask :v1 => 'electrum-ltc' do
  version '1.9.8.6'
  sha256 '6e6cee192fc4485d8ba0850fc07eab6d58b0abd55b92209a2076aa3d12c10801'

  url "https://electrum-ltc.org/download/Electrum-LTC-#{version}.dmg"
  gpg "#{url}.asc",
      :key_id => '9914864dfc33499c6ca2beea22453004695506fd'
  homepage 'http://electrum-ltc.org'
  license :unknown    # todo: improve this machine-generated value

  app 'Electrum-LTC.app'
end
