cask 'itch' do
  version '23.6.3'
  sha256 '3ed905c4e7e0ad37004dd235a0dcf27325adac10fb829d3bfcd076c25442fda4'

  # github.com/itchio/itch was verified as official when first introduced to the cask
  url "https://github.com/itchio/itch/releases/download/v#{version}/itch-mac.dmg"
  appcast 'https://github.com/itchio/itch/releases.atom'
  name 'itch'
  homepage 'https://itch.io/app'

  app 'itch.app'
end
