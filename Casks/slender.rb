cask :v1 => 'slender' do
  version '2.2.2'
  sha256 '7d3486efb8d6b4cdce8179b423616642238081e510292d215a9c78210913afb5'

  url "http://downloads.dragonforged.com/slender#{version.delete('.')}.zip"
  appcast 'http://dragonforged.com/slender/sparkle/?bundleId=com.dfsw.Slender',
          :sha256 => 'cc82ce3f2c0fc3a92911fba91438524543bee330e49e1d83613292b89ba5afbf'
  name 'Slender'
  homepage 'http://dragonforged.com/slender/'
  license :commercial

  app 'Slender.app'
end
