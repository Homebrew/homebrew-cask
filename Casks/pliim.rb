cask 'pliim' do
  version '1.5.0'
  sha256 '7e90a2f6300840b42dec5a29e5dbef5c46af493c386632e75ba3bb3ec25892f2'

  # github.com/zehfernandes/pliim was verified as official when first introduced to the cask
  url "https://github.com/zehfernandes/pliim/releases/download/v#{version}/Pliim.app.zip"
  appcast 'https://github.com/zehfernandes/pliim/releases.atom'
  name 'Pliim'
  homepage 'https://zehfernandes.github.io/pliim/'

  app 'Pliim.app'
end
