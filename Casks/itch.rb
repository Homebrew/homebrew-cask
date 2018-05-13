cask 'itch' do
  version '23.6.3'
  sha256 '3ed905c4e7e0ad37004dd235a0dcf27325adac10fb829d3bfcd076c25442fda4'

  # github.com/itchio/itch was verified as official when first introduced to the cask
  url "https://github.com/itchio/itch/releases/download/v#{version}/itch-mac.dmg"
  appcast 'https://github.com/itchio/itch/releases.atom',
          checkpoint: '47ef6c169e20af25318dd8ef85a3b351856a6d333728a6112ef1f28f71f6a7dc'
  name 'itch'
  homepage 'https://itch.io/app'

  app 'itch.app'
end
