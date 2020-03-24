cask 'orange' do
  version '3.24.1'
  sha256 '4f31193260c4f2d9f0a495d664e8fbc7438aebfadc7e83f1d950c1c672873887'

  url "https://download.biolab.si/download/files/Orange#{version.major}-#{version}.dmg"
  appcast 'https://github.com/biolab/orange3/releases.atom'
  name 'Orange'
  homepage 'https://orange.biolab.si/'

  app "Orange#{version.major}.app"
end
