cask 'myphotostream' do
  version '1.1.3'
  sha256 '88b674b03a1537ff90ae3aa0edc9e2f6ca41ce6367b8d7f30db1c1c6178a03fc'

  url "http://www.weareyeah.com/MyPhotostream/download/#{version}/MyPhotostream-update.zip"
  appcast 'http://www.weareyeah.com/MyPhotostream/feeds/update.appcast',
          checkpoint: 'e1351763bee9f57f97416c547870994f103fb681c58b4423dd9f7a47b23253bc'
  name 'MyPhotostream'
  homepage 'http://www.weareyeah.com/MyPhotostream/'

  app 'MyPhotostream.app'
end
