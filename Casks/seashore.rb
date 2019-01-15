cask 'seashore' do
  version '2.1.9'
  sha256 '9d8e2ed821845763a6fdb08aecda025de3bc2a660047130b0d25876d4014d542'

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end
