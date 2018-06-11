cask 'jaxx' do
  version '1.3.17'
  sha256 '2341f751f6485e1044d54bc2b27696856cd00c92e51058512ec9d85e5e23cef8'

  # github.com/Jaxx-io/Jaxx was verified as official when first introduced to the cask
  url "https://github.com/Jaxx-io/Jaxx/releases/download/v#{version}/Jaxx-#{version}.dmg"
  appcast 'https://github.com/Jaxx-io/Jaxx/releases.atom',
          checkpoint: 'c490b3a7eceb3614d7ad858aacb487236d56fce5d3b6c76565fd79f39010df43'
  name 'Jaxx Blockchain Wallet'
  homepage 'https://jaxx.io/'

  app 'Jaxx.app'

  zap trash: [
               '~/Library/Application Support/jaxx',
               '~/Library/Logs/jaxx',
             ]
end
