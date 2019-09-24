cask 'ckb-next' do
  version '0.4.1'
  sha256 '5c52bacccb61f69767681ff19c5ec815365b5a2d52985c402f086519a2b5f34e'

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
