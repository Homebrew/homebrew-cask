cask 'cuttle' do
  version '1.1'
  sha256 '7133beb24c3a37fe13f12d0b8110f1fcaf541d80e938cfaafb37a4d47bfcca15'

  url "https://github.com/oakmac/cuttle/releases/download/v#{version}/cuttle-v#{version}-mac.dmg"
  appcast 'https://github.com/oakmac/cuttle/releases.atom',
          checkpoint: 'dde2357efd14bbd9c4178d95e3005cbf2801dcf4d3886a492bff2bd9a9e50c1f'
  name 'CUTTLE'
  homepage 'https://github.com/oakmac/cuttle'

  app 'Cuttle.app'
end
