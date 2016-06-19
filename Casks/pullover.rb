cask 'pullover' do
  version '1.0.0'
  sha256 'fa170d7fa4d7144f29df8b5385c5e40f2a0a7fcace5c86e55fe408dc8dbc9f5e'

  url "https://github.com/cgrossde/Pullover/releases/download/#{version}/Pullover_#{version}.dmg"
  appcast 'https://github.com/cgrossde/Pullover/releases.atom',
          checkpoint: 'cea85f2af6fbb6955998acd1eb7a483d96ff366768eac6404776b9efb2d37f57'
  name 'Pullover'
  homepage 'https://github.com/cgrossde/Pullover'
  license :gpl

  app 'pullover.app'
end
