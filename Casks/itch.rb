cask 'itch' do
  version '23.0.0'
  sha256 '3ceb459bd2fc09f4f64c8ab6ed0f0cc5e71c936653bd740180e7caa31e1246d5'

  # github.com/itchio/itch was verified as official when first introduced to the cask
  url "https://github.com/itchio/itch/releases/download/v#{version}/itch-mac.dmg"
  appcast 'https://github.com/itchio/itch/releases.atom',
          checkpoint: '7dbc396693efa8d2648f2b0e851b7a0c615481660f8bd528e5e88b477a4f254b'
  name 'itch'
  homepage 'https://itch.io/app'

  app 'itch.app'
end
