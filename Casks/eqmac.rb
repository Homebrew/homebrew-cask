cask 'eqmac' do
  version '0.0.1'
  sha256 '00538e305f4ad90c688fc4fd9dd07969f713e35051ef98971cda53368996f918'

  url "https://github.com/bitgapp/eqMac/releases/download/v#{version}/eqMac.dmg"
  appcast 'https://github.com/bitgapp/eqMac/releases.atom'
  name 'eqMac'
  homepage 'https://github.com/bitgapp/eqMac/releases/'

  app "eqMac.app"

end
