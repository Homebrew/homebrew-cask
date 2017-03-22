cask 'itch' do
  version '23.3.1'
  sha256 'eb963879e17f26c67bda3c382401478b4f4e36c70b3f3308a6dc643864dee2f2'

  # github.com/itchio/itch was verified as official when first introduced to the cask
  url "https://github.com/itchio/itch/releases/download/v#{version}/itch-mac.dmg"
  appcast 'https://github.com/itchio/itch/releases.atom',
          checkpoint: 'd981c31d952f0152ed0fcaccd21e9b3ac1858a3d0bcaa96e01fd71051f5b883e'
  name 'itch'
  homepage 'https://itch.io/app'

  app 'itch.app'
end
