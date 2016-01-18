cask 'lmms' do
  if MacOS.release <= :snow_leopard
    version '1.0.99'
    sha256 '2ce390337a2ee372f76812b5c308ac8f3faad6981d99f0eb3b843149e3ebc98c'

    # github.com is the official download host per the vendor homepage
    url "https://github.com/LMMS/lmms/releases/download/v#{version}/lmms-#{version}.dmg"
  else
    version '1.1.3'
    sha256 '6d5197e6e5edd4a08cb26fc98ee229308833b4f759e9d9724a745ab1035aba15'

    # github.com is the official download host per the vendor homepage
    url "https://github.com/LMMS/lmms/releases/download/v#{version}/lmms-#{version}-mac10.7.dmg"
  end

  appcast 'https://github.com/LMMS/lmms/releases.atom',
          checkpoint: 'abb66fd3a0288d819436d8dd1cea01cd2c3d2690d99766d2fa6f90ae6ae35bd1'
  name 'LMMS'
  homepage 'https://lmms.io'
  license :gpl

  app 'LMMS.app'
end
