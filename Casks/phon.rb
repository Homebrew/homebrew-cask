cask 'phon' do
  version '3.0.2'
  sha256 '34fcbd54e4aa5a8b7ad6545a853dbf57842fde7e18999effa33ce1ca61056167'

  # github.com/phon-ca/phon was verified as official when first introduced to the cask
  url "https://github.com/phon-ca/phon/releases/download/#{version}/Phon_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://github.com/phon-ca/phon/releases.atom'
  name 'Phon'
  homepage 'https://www.phon.ca/'

  app 'Phon.app'
end
