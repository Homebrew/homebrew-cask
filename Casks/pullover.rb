cask 'pullover' do
  version '1.0.0'
  sha256 'fa170d7fa4d7144f29df8b5385c5e40f2a0a7fcace5c86e55fe408dc8dbc9f5e'

  url "https://github.com/cgrossde/Pullover/releases/download/#{version}/Pullover_#{version}.dmg"
  appcast 'https://github.com/cgrossde/Pullover/releases.atom',
          checkpoint: 'f0341f0f19e6aac6aa57ad4c64a7188a307fcf7943344dac262f2f6818dba753'
  name 'Pullover'
  homepage 'https://github.com/cgrossde/Pullover'
  license :gpl

  app 'pullover.app'
end
