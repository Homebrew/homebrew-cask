cask 'mark-text' do
  version '0.12.20'
  sha256 'ec293012b1709705d47d6793436ad6982114fc732ace7ad3cdab88db8fb4034e'

  # github.com/marktext/marktext was verified as official when first introduced to the cask
  url "https://github.com/marktext/marktext/releases/download/v#{version}/marktext-#{version}.dmg"
  appcast 'https://github.com/marktext/marktext/releases.atom'
  name 'Mark Text'
  homepage 'https://marktext.github.io/website/'

  app 'Mark Text.app'
end
