cask 'jaxx' do
  version '1.3.11'
  sha256 'f0d3657c7de3217c2db57eafd370d7df80f367dfd33a47570c15da96eea2e799'

  # github.com/Jaxx-io/Jaxx was verified as official when first introduced to the cask
  url "https://github.com/Jaxx-io/Jaxx/releases/download/v#{version}/Jaxx-#{version}.dmg"
  appcast 'https://github.com/Jaxx-io/Jaxx/releases.atom',
          checkpoint: 'b3a999f051714320af674e6175c18ee283be63ec917e6424579729e4cd68e338'
  name 'Jaxx Blockchain Wallet'
  homepage 'https://jaxx.io/'

  app 'Jaxx.app'

  zap trash: [
               '~/Library/Application Support/jaxx',
               '~/Library/Logs/jaxx',
             ]
end
