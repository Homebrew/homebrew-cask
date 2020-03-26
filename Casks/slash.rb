cask 'slash' do
  version '0.8.22'
  sha256 '8221f73a3937dbb46a0b542f4e05b0d1fc0821e0c0bcebad7a28460db3f0e8f0'

  # Releases made from https://github.com/jetlej/slash-releases/releases
  url "https://github.com/jetlej/slash-releases/releases/download/v#{version}/Slash-#{version}.dmg"
  appcast 'https://github.com/jetlej/slash-releases/releases.atom'
  name 'Slash'
  homepage 'https://getslash.co/'

  app 'Slash.app'
end

