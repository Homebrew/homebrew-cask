cask 'handylock' do
  version '1.2.10'
  sha256 '859a7a7c58388a35fd8ad7e287d0557ae69e3dfa8cc7b1416af37e7493a92aeb'

  # s3.amazonaws.com/netputing/handyLock was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/netputing/handyLock/handyLock+v#{version}.zip"
  name 'handyLock'
  homepage 'http://www.netputing.com/applications/handylock/'

  app 'handyLock.app'
end
