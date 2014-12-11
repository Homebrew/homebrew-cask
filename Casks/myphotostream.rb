cask :v1 => 'myphotostream' do
  version :latest
  sha256 :no_check

  url 'http://www.weareyeah.com/MyPhotostream/download'
  homepage 'http://www.weareyeah.com/MyPhotostream/'
  license :unknown    # todo: improve this machine-generated value

  app 'MyPhotostream.app'
end
