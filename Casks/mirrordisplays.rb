cask 'mirrordisplays' do
  version '1.1'
  sha256 'd1e39663d426cc7bdd23c0abd03b1a99d2ea4003e62c6824768547f087880089'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/fcanas/mirror-displays/releases/download/v#{version}/MirrorDisplays.zip"
  appcast 'https://github.com/fcanas/mirror-displays/releases.atom',
          checkpoint: 'e2b3b062a7439dd4b91f437b146ea32ee3c3038492af356d966b97673ac1c04a'
  name 'Mirror Displays'
  homepage 'http://www.fabiancanas.com/Projects/MirrorDisplays'
  license :gpl

  app 'MirrorDisplays.app'
end
