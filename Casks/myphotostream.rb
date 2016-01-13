cask 'myphotostream' do
  version :latest
  sha256 :no_check

  url 'http://www.weareyeah.com/MyPhotostream/download'
  appcast 'http://www.weareyeah.com/MyPhotostream/feeds/update.appcast',
          :checkpoint => '06929a013a1d5ab035588b620e35fc083b5556522110bc7e923958fd8b219351'
  name 'MyPhotostream'
  homepage 'http://www.weareyeah.com/MyPhotostream/'
  license :commercial

  app 'MyPhotostream.app'
end
