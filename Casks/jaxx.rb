cask 'jaxx' do
  version '1.2.25'
  sha256 'b5f6b8a76c445409e900ed9172cdada3f20cf359ae4955206aa4b5ab825e6c2c'

  url "https://jaxx.io/files/#{version}/Jaxx-v#{version}.osx.dmg"
  name 'Jaxx Blockchain Wallet'
  homepage 'https://jaxx.io/'

  app 'Jaxx.app'
end
