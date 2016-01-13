cask 'myphotostream' do
  version :latest
  sha256 :no_check

  url 'http://www.weareyeah.com/MyPhotostream/download'
  appcast 'http://www.weareyeah.com/MyPhotostream/feeds/update.appcast',
          :checkpoint => '69b4f5b092e285068a5f26a6a5888e9e6c7bb9dc65de83a3e7985dda426b89ba'
  name 'MyPhotostream'
  homepage 'http://www.weareyeah.com/MyPhotostream/'
  license :commercial

  app 'MyPhotostream.app'
end
