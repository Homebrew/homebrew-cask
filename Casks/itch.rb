cask 'itch' do
  version '23.1.0'
  sha256 '2347b9a1cd486817477284db33de785c9db88607c796ecb4f4bb864ba2f1eb2f'

  # github.com/itchio/itch was verified as official when first introduced to the cask
  url "https://github.com/itchio/itch/releases/download/v#{version}/itch-mac.dmg"
  appcast 'https://github.com/itchio/itch/releases.atom',
          checkpoint: '875523b484c78f46b969712f7d01ccf171c3b4d0a224141a07a2daab5fd99268'
  name 'itch'
  homepage 'https://itch.io/app'

  app 'itch.app'
end
