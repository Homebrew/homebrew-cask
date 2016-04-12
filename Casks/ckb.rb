cask 'ckb' do
  version '0.2.5'
  sha256 '02b60e23c85481453546d9d40ff74592afd27404540e5a0f347f8fe01ded0f91'

  url "https://github.com/ccMSC/ckb/releases/download/v#{version}/ckb.pkg"
  appcast 'https://github.com/ccMSC/ckb/releases.atom',
          checkpoint: '39b2c0d081b41be92b62486990c31128c44c95f04429ff29d8eddcf9e9778fe6'
  name 'ckb'
  homepage 'https://github.com/ccMSC/ckb'
  license :gpl

  pkg 'ckb.pkg'

  uninstall pkgutil: 'com.ckb.ckb'
end
