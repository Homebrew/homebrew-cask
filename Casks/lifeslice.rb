cask 'lifeslice' do
  version '2.3'
  sha256 '0d95ba8c7e1211fa8668b28a323f98aa486c08ce21f1720641ea5f405c1ff056'

  # wanderingstan.com is the official download host per the vendor homepage
  url 'http://www.wanderingstan.com/apps/lifeslice/LifeSlice_701.zip'
  appcast 'http://wanderingstan.com/apps/lifeslice/lifeslice_appcast.xml',
          :sha256 => '57aa727b84ce1ac250eb00aa1eb3954f6e733e9d7b7baee9221c49efc8ddaf06'
  name 'LifeSlice'
  homepage 'https://wanderingstan.github.io/Lifeslice/'
  license :oss

  app 'LifeSlice.app'
end
