cask 'ckb' do
  version '0.2.6'
  sha256 '724f7ee9a0e363304bc2b0b82713582bf366a07f2e4c4639389bb6f7efb7ebbf'

  url "https://github.com/ccMSC/ckb/releases/download/v#{version}/ckb.pkg"
  appcast 'https://github.com/ccMSC/ckb/releases.atom',
          checkpoint: 'a986b9f3e5d5d9103c7711f5032cfbf4140eafac008342bc9e9907798f5e2421'
  name 'ckb'
  homepage 'https://github.com/ccMSC/ckb'

  pkg 'ckb.pkg'

  uninstall pkgutil: 'com.ckb.ckb'
end
