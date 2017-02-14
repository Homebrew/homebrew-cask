cask 'cuttle' do
  version '1.1'
  sha256 '7133beb24c3a37fe13f12d0b8110f1fcaf541d80e938cfaafb37a4d47bfcca15'

  url "https://github.com/oakmac/cuttle/releases/download/v#{version}/cuttle-v#{version}-mac.dmg"
  appcast 'https://github.com/oakmac/cuttle/releases.atom',
          checkpoint: '9bcc9cf41d92b6c9470bdeaa80436b98b4016424d73c1f3561890770c36c5908'
  name 'CUTTLE'
  homepage 'https://github.com/oakmac/cuttle'

  app 'Cuttle.app'
end
