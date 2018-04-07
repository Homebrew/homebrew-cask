cask 'jaxx' do
  version '1.3.15'
  sha256 'b054de8f5fe423c2c671494ac53acef4c25a310fddcb3088fdc34e15f4d95759'

  # github.com/Jaxx-io/Jaxx was verified as official when first introduced to the cask
  url "https://github.com/Jaxx-io/Jaxx/releases/download/v#{version}/Jaxx-#{version}.dmg"
  appcast 'https://github.com/Jaxx-io/Jaxx/releases.atom',
          checkpoint: '8e47b7e7b92e53145c3d3864cad1e0351ce0b02e2e8d8d641ab84a277a30cf94'
  name 'Jaxx Blockchain Wallet'
  homepage 'https://jaxx.io/'

  app 'Jaxx.app'

  zap trash: [
               '~/Library/Application Support/jaxx',
               '~/Library/Logs/jaxx',
             ]
end
