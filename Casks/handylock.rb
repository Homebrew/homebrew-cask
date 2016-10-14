cask 'handylock' do
  version '1.2.9'
  sha256 'f6052c4229613590be2916f68fbcb5c6b632488745fc6e9c1074bfe0452d11cf'

  # s3.amazonaws.com/netputing/handyLock was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/netputing/handyLock/handyLock+v#{version}.dmg"
  name 'handyLock'
  homepage 'https://www.netputing.com/applications/handylock/'

  app 'handyLock.app'
end
