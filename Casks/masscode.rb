cask 'masscode' do
  version '1.1.0'
  sha256 'c57809663fdfd919de72d03793ab0af7078bb795ae05b11730cbcccb0abf3f76'

  # github.com/antonreshetov/massCode was verified as official when first introduced to the cask
  url "https://github.com/antonreshetov/massCode/releases/download/v#{version}/massCode-#{version}-mac.zip"
  appcast 'https://github.com/antonreshetov/massCode/releases.atom'
  name 'massCode'
  homepage 'https://masscode.io/'

  app 'massCode.app'
end
