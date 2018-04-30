cask 'itch' do
  version '23.6.2'
  sha256 '6bab73e1eb791494ea560a4dd4b9b1045e33af6a3279bb481057ed045cc4a8f3'

  # github.com/itchio/itch was verified as official when first introduced to the cask
  url "https://github.com/itchio/itch/releases/download/v#{version}/itch-mac.dmg"
  appcast 'https://github.com/itchio/itch/releases.atom',
          checkpoint: '765a71264737aa97a74969a0eae6260f6e2926814d33c969f1025754f2683b5a'
  name 'itch'
  homepage 'https://itch.io/app'

  app 'itch.app'
end
