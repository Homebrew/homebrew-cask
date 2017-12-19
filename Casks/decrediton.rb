cask 'decrediton' do
  version '1.1.2'
  sha256 'b251fdb8f8db0a54866f2c41275cc7daa4a0fdc08e02e252b257cfc41b2b3221'

  url "https://github.com/decred/decred-binaries/releases/download/v#{version}/decrediton-v#{version}.dmg"
  appcast 'https://github.com/decred/decred-binaries/releases.atom',
          checkpoint: '24946ce113ef6ae1e621ae495c228035e4b777005ac92fc4a41e9d1fdf0eea78'
  name 'Decrediton'
  homepage 'https://github.com/decred/decrediton'

  app 'decrediton.app'
end
