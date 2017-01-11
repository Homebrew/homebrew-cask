cask 'image-tool' do
  version '1.4.1'
  sha256 '66ef0c6cdf2e90981bc8bd0d1131e6e0f141744406997712550b8b5a05022d39'

  url "http://www.jimmcgowan.net/diskimages/ImageTool#{version}.dmg"
  appcast 'http://www.jimmcgowan.net/Site/ImageTool.html',
          checkpoint: 'f272e04488b986737e525bdc825b525fe0f698f0e67ed025d09510934c8949c6'
  name 'Image Tool'
  homepage 'http://www.jimmcgowan.net/Site/ImageTool.html'

  app 'Image Tool.app'
end
