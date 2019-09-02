cask 'ckb-next' do
  version '0.4.1'
  sha256 '6f56219c4cb003e1b3d3559c7124368dc4ed8ce6d46eed558d90a5c25b5f6318'

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
