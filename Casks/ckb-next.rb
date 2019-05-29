cask 'ckb-next' do
  version '0.4.0'
  sha256 '8abeb4a0d51653f403099ef72c23e8eb81f792c5480fcc359283dbe5fc167e00'

  url "https://github.com/ckb-next/ckb-next/releases/download/v#{version}/ckb-next_v#{version}.dmg"
  appcast 'https://github.com/ckb-next/ckb-next/releases.atom'
  name 'ckb-next'
  homepage 'https://github.com/ckb-next/ckb-next'

  pkg 'ckb-next.mpkg'

  uninstall pkgutil:   [
                         'org.ckb-next.ckb',
                         'org.ckb-next.daemon',
                       ],
            launchctl: 'org.ckb-next.daemon'
end
