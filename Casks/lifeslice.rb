cask 'lifeslice' do
  version '2.3'
  sha256 '0d95ba8c7e1211fa8668b28a323f98aa486c08ce21f1720641ea5f405c1ff056'

  # wanderingstan.com is the official download host per the vendor homepage
  url 'http://www.wanderingstan.com/apps/lifeslice/LifeSlice_701.zip'
  appcast 'http://wanderingstan.com/apps/lifeslice/lifeslice_appcast.xml',
          :sha256 => '71b1687fc06c31ee1bbe08aab3c5b39f1cb7ca3625bf85bfa41cfd5d3245b373'
  name 'LifeSlice'
  homepage 'https://wanderingstan.github.io/Lifeslice/'
  license :oss

  app 'LifeSlice.app'
end
