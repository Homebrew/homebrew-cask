cask 'myphotostream' do
  version '1.1.3'
  sha256 '88b674b03a1537ff90ae3aa0edc9e2f6ca41ce6367b8d7f30db1c1c6178a03fc'

  url "http://www.weareyeah.com/MyPhotostream/download/#{version}/MyPhotostream-update.zip"
  appcast 'http://www.weareyeah.com/MyPhotostream/feeds/update.appcast'
  name 'MyPhotostream'
  homepage 'http://www.weareyeah.com/MyPhotostream/'

  app 'MyPhotostream.app'
end
