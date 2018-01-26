cask 'sqlectron' do
  version '1.29.0'
  sha256 'e00695e5ba1f9b881ddd9b6da42086aaf05f5a91bcd51481dea714d43ac738b6'

  # github.com/sqlectron/sqlectron-gui was verified as official when first introduced to the cask
  url "https://github.com/sqlectron/sqlectron-gui/releases/download/v#{version}/Sqlectron-#{version}-mac.zip"
  appcast 'https://github.com/sqlectron/sqlectron-gui/releases.atom',
          checkpoint: '7f85aa677f1439576f06889d4042a0d2665cf0b665c25ab52b9025dd98241015'
  name 'Sqlectron'
  homepage 'https://sqlectron.github.io/'

  depends_on macos: '>= :mountain_lion'

  app 'Sqlectron.app'

  zap trash: [
               '~/.sqlectron.json',
               '~/Library/Application Support/Sqlectron',
             ]
end
