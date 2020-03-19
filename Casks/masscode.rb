cask 'masscode' do
  version '1.0.2'
  sha256 '6b663913e66f92d167e87451ccddc912eb3f3a034cc96a382b2f07edd60dcda7'

  # github.com/antonreshetov/massCode was verified as official when first introduced to the cask
  url "https://github.com/antonreshetov/massCode/releases/download/v#{version}/massCode-#{version}-mac.zip"
  appcast 'https://github.com/antonreshetov/massCode/releases.atom'
  name 'massCode'
  homepage 'https://masscode.io/'

  app 'massCode.app'
end
