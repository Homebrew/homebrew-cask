cask 'mobster' do
  version '0.0.47'
  sha256 '1bda2435bc22cc9925f6e1b09f9f5149c8d1a7135b616c4e4a6d067bed901d32'

  url "https://github.com/dillonkearns/mobster/releases/download/v#{version}/Mobster-#{version}.dmg"
  name 'Mobster'
  homepage 'https://github.com/dillonkearns/mobster/'

  app 'Mobster.app'
end
