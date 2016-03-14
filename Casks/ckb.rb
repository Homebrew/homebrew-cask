cask 'ckb' do
  version '0.2.4'
  sha256 '4a28adc1ed910250b402d37ee3e92174925e648e6d9c96b2ddf791e898db8159'

  url "https://github.com/ccMSC/ckb/releases/download/v#{version}/ckb.pkg"
  appcast 'https://github.com/ccMSC/ckb/releases.atom',
          checkpoint: '6cd6d2c9460cf1cc2b912f2e852231b404a9c0559f630e1ad14e34424214c51d'
  name 'ckb'
  homepage 'https://github.com/ccMSC/ckb'
  license :gpl

  pkg 'ckb.pkg'

  uninstall pkgutil: 'com.ckb.ckb'
end
