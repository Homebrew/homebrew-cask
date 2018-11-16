cask 'mark-text' do
  version '0.13.53'
  sha256 'e330e325a485165f43e462d097ccfea972e12d455b4b9cc37e408d628eb575c9'

  # github.com/marktext/marktext was verified as official when first introduced to the cask
  url "https://github.com/marktext/marktext/releases/download/v#{version}/marktext-#{version}.dmg"
  appcast 'https://github.com/marktext/marktext/releases.atom'
  name 'Mark Text'
  homepage 'https://marktext.github.io/website/'

  app 'Mark Text.app'
end
