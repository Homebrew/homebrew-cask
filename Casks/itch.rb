cask 'itch' do
  version '18.6.1'
  sha256 '4edf40fa7475a7b79805270d132af7448a6531879d85d8f2a4f5a73e4abbc750'

  # github.com/itchio/itch was verified as official when first introduced to the cask
  url "https://github.com/itchio/itch/releases/download/v#{version}/itch-mac.dmg"
  appcast 'https://github.com/itchio/itch/releases.atom',
          checkpoint: '26a87915c719ebdc7a62a82e821b0af586024887069621aefcb1896052ea44e2'
  name 'itch'
  homepage 'https://itch.io/app'

  app 'itch.app'
end
