cask 'pliim' do
  version '1.7.0'
  sha256 'cd44a3e8d0d58b431df288c3ce13a8032f76b270077ac488cb9db5d74e7d17a5'

  # github.com/zehfernandes/pliim was verified as official when first introduced to the cask
  url "https://github.com/zehfernandes/pliim/releases/download/v#{version}/Pliim.app.zip"
  appcast 'https://github.com/zehfernandes/pliim/releases.atom'
  name 'Pliim'
  homepage 'https://zehfernandes.github.io/pliim/'

  app 'Pliim.app'
end
