cask 'healthi' do
  version '1.0.1'
  sha256 'b5d039f727ae1b170127f92a76e0ffaea43c402046d712c01dc3aed22c034538'

  url "https://github.com/pablopunk/healthi/releases/download/v#{version}/healthi.app.zip"
  name 'healthi'
  homepage 'https://github.com/pablopunk/healthi'

  app 'healthi.app'
end
