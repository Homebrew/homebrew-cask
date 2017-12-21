cask 'sqlectron' do
  version '1.28.0'
  sha256 'b21cc0642797fd1aa708352ba8961e41606c4b25738e6fbecffdfa8c19cf24e2'

  # github.com/sqlectron/sqlectron-gui was verified as official when first introduced to the cask
  url "https://github.com/sqlectron/sqlectron-gui/releases/download/v#{version}/Sqlectron-#{version}-mac.zip"
  appcast 'https://github.com/sqlectron/sqlectron-gui/releases.atom',
          checkpoint: '871a62b58ff8e58d0c4fedbafad3c19d411028b290455285531dd9aa4720c46f'
  name 'Sqlectron'
  homepage 'https://sqlectron.github.io/'

  depends_on macos: '>= :mountain_lion'

  app 'Sqlectron.app'

  zap trash: [
               '~/.sqlectron.json',
               '~/Library/Application Support/Sqlectron',
             ]
end
