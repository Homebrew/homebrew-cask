cask 'ckb-next' do
  version '0.3.0'
  sha256 '697819054404efaaaf833c43faaa7510b523670c84e344587a5f7456e0ed1977'

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
