cask 'masscode' do
  version '1.2.1'
  sha256 'b0c94f5f3db37cd4d7305fa1e6c42dc6e3c9651fce621fe4263849c9994252ed'

  # github.com/antonreshetov/massCode/ was verified as official when first introduced to the cask
  url "https://github.com/antonreshetov/massCode/releases/download/v#{version}/massCode-#{version}.dmg"
  appcast 'https://github.com/antonreshetov/massCode/releases.atom'
  name 'massCode'
  homepage 'https://masscode.io/'

  app 'massCode.app'
end
