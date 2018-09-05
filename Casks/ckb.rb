cask 'ckb' do
  version '0.2.6'
  sha256 '724f7ee9a0e363304bc2b0b82713582bf366a07f2e4c4639389bb6f7efb7ebbf'

  url "https://github.com/ccMSC/ckb/releases/download/v#{version}/ckb.pkg"
  appcast 'https://github.com/ccMSC/ckb/releases.atom'
  name 'ckb'
  homepage 'https://github.com/ccMSC/ckb'

  pkg 'ckb.pkg'

  uninstall pkgutil:   'com.ckb.ckb',
            launchctl: 'com.ckb.daemon'

  caveats do
    discontinued
  end
end
