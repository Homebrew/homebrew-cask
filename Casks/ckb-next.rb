cask 'ckb-next' do
  version '0.3.2'
  sha256 'f91f1b823df76f2dbe31c19dee8cbd824f4fe9312aa8fd854c4a8774816e53b6'

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
