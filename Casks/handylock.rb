cask 'handylock' do
  version '1.2.9'
  sha256 'f6052c4229613590be2916f68fbcb5c6b632488745fc6e9c1074bfe0452d11cf'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/netputing/handyLock/handyLock+v#{version}.dmg"
  name 'handyLock'
  homepage 'http://www.netputing.com/applications/handylock/'
  license :gratis

  app 'handyLock.app'
end
