cask 'jaxx' do
  version '1.3.9'
  sha256 '0e1756d95c68e7d44e4faeba916ba27608584692dd2f67f89aa19d73c5109e05'

  # github.com/Jaxx-io/Jaxx was verified as official when first introduced to the cask
  url "https://github.com/Jaxx-io/Jaxx/releases/download/v#{version}/Jaxx-#{version}.dmg"
  appcast 'https://github.com/Jaxx-io/Jaxx/releases.atom',
          checkpoint: '2670f07ef7e62cf6752333fbcef16a6be192ff340099eb64a071582fe86470b4'
  name 'Jaxx Blockchain Wallet'
  homepage 'https://jaxx.io/'

  app 'Jaxx.app'

  zap trash: [
               '~/Library/Application Support/jaxx',
               '~/Library/Logs/jaxx',
             ]
end
