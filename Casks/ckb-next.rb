cask 'ckb-next' do
  version '0.3.0'
  sha256 '697819054404efaaaf833c43faaa7510b523670c84e344587a5f7456e0ed1977'

  url "https://github.com/ckb-next/ckb-next/releases/download/v#{version}/ckb-next_v#{version}.dmg"
  appcast 'https://github.com/ckb-next/ckb-next/releases.atom',
          checkpoint: '7aa55122c4e94be6ce97559daf9ce1e391c48bfe0bd99189c1782ad28ddfaa36'
  name 'ckb-next'
  homepage 'https://github.com/ckb-next/ckb-next'

  pkg 'ckb-next.mpkg'

  uninstall pkgutil:   [
                         'org.ckb-next.ckb',
                         'org.ckb-next.daemon',
                       ],
            launchctl: 'org.ckb-next.daemon'
end
