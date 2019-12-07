cask 'mark-text' do
  version '0.15.1'
  sha256 '92a5582782c2f3de0b61ebdd265da264ffaa798521130ca43fad9d6ae0711439'

  # github.com/marktext/marktext was verified as official when first introduced to the cask
  url "https://github.com/marktext/marktext/releases/download/v#{version}/marktext-#{version}.dmg"
  appcast 'https://github.com/marktext/marktext/releases.atom'
  name 'Mark Text'
  homepage 'https://marktext.github.io/website/'

  app 'Mark Text.app'
end
