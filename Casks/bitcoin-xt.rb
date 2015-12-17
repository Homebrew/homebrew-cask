cask 'bitcoin-xt' do
  version '0.11D'
  sha256 '1152f84032a71b242f9dde79aadc77f353b9879a506692d4c0fde35ae4182f33'

  url "https://github.com/bitcoinxt/bitcoinxt/releases/download/v#{version}/Bitcoin-XT.#{version}.dmg"
  appcast 'https://github.com/bitcoinxt/bitcoinxt/releases.atom'
  name 'Bitcoin-XT'
  homepage 'https://bitcoinxt.software/'
  license :mit

  app 'Bitcoin-XT.app'
end
