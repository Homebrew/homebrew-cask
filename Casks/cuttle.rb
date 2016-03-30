cask 'cuttle' do
  version '1.1'
  sha256 '7133beb24c3a37fe13f12d0b8110f1fcaf541d80e938cfaafb37a4d47bfcca15'

  url "https://github.com/oakmac/cuttle/releases/download/v#{version}/cuttle-v#{version}-mac.dmg"
  name 'CUTTLE'
  homepage 'https://github.com/oakmac/cuttle'
  license :mit

  app 'Cuttle.app'
end
