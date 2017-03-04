cask 'ckb' do
  version '0.2.6'
  sha256 '724f7ee9a0e363304bc2b0b82713582bf366a07f2e4c4639389bb6f7efb7ebbf'

  url "https://github.com/ccMSC/ckb/releases/download/v#{version}/ckb.pkg"
  appcast 'https://github.com/ccMSC/ckb/releases.atom',
          checkpoint: 'e78446bd6ad2ad006934a73a1165dbce61e7d99b3a6da6537dff6abe7de16e3d'
  name 'ckb'
  homepage 'https://github.com/ccMSC/ckb'

  pkg 'ckb.pkg'

  uninstall pkgutil: 'com.ckb.ckb'
end
