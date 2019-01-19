cask 'pliim' do
  version '1.6.0'
  sha256 '28db19622c1cd2dd1deaa15e02ce3f034123cd4a2ef41bfedaa6bb6fb6eb92e5'

  # github.com/zehfernandes/pliim was verified as official when first introduced to the cask
  url "https://github.com/zehfernandes/pliim/releases/download/v#{version}/Pliim.app.zip"
  appcast 'https://github.com/zehfernandes/pliim/releases.atom'
  name 'Pliim'
  homepage 'https://zehfernandes.github.io/pliim/'

  app 'Pliim.app'
end
