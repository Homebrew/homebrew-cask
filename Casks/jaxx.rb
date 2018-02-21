cask 'jaxx' do
  version '1.3.12'
  sha256 '1e19563f4f7c5a9d045b3a3fd6357107559ab54a994ba714058953300cefe166'

  # github.com/Jaxx-io/Jaxx was verified as official when first introduced to the cask
  url "https://github.com/Jaxx-io/Jaxx/releases/download/v#{version}/Jaxx-#{version}.dmg"
  appcast 'https://github.com/Jaxx-io/Jaxx/releases.atom',
          checkpoint: '2351faee636501193391d62e1e4b29f7dcc07acfeda00389af944fac746edc01'
  name 'Jaxx Blockchain Wallet'
  homepage 'https://jaxx.io/'

  app 'Jaxx.app'

  zap trash: [
               '~/Library/Application Support/jaxx',
               '~/Library/Logs/jaxx',
             ]
end
