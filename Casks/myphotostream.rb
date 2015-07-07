cask :v1 => 'myphotostream' do
  version :latest
  sha256 :no_check

  url 'http://www.weareyeah.com/MyPhotostream/download'
  name 'MyPhotostream'
  appcast 'http://www.weareyeah.com/MyPhotostream/feeds/update.appcast',
          :sha256 => 'a310ba257cb8c82100ad68ea5332ace6b8204629d671622691cec559e783f686'
  homepage 'http://www.weareyeah.com/MyPhotostream/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'MyPhotostream.app'
end
