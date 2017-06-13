cask 'mirrordisplays' do
  version '1.1'
  sha256 'd1e39663d426cc7bdd23c0abd03b1a99d2ea4003e62c6824768547f087880089'

  # github.com/fcanas/mirror-displays was verified as official when first introduced to the cask
  url "https://github.com/fcanas/mirror-displays/releases/download/v#{version}/MirrorDisplays.zip"
  appcast 'https://github.com/fcanas/mirror-displays/releases.atom',
          checkpoint: '95b3f775e677d90f09f0c2b2a7b192ffddc73cf05cd45f79ae2c41807ee2cdd0'
  name 'Mirror Displays'
  homepage 'https://fabiancanas.com/open-source/mirror-displays'

  app 'MirrorDisplays.app'
end
