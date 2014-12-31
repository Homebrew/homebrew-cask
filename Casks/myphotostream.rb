cask :v1 => 'myphotostream' do
  version :latest
  sha256 :no_check

  url 'http://www.weareyeah.com/MyPhotostream/download'
  homepage 'http://www.weareyeah.com/MyPhotostream/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'MyPhotostream.app'
end
