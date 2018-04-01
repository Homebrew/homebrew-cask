cask 'lifeslice' do
  version '2.3'
  sha256 '0d95ba8c7e1211fa8668b28a323f98aa486c08ce21f1720641ea5f405c1ff056'

  # wanderingstan.com was verified as official when first introduced to the cask
  url 'http://www.wanderingstan.com/apps/lifeslice/LifeSlice_701.zip'
  appcast 'http://wanderingstan.com/apps/lifeslice/lifeslice_appcast.xml',
          checkpoint: '67f1a993754ab3372dc8e007d534afef2455c2348ad40972039e5f72b356162d'
  name 'LifeSlice'
  homepage 'https://wanderingstan.github.io/Lifeslice/'

  app 'LifeSlice.app'
end
