cask 'hots-replay-uploader' do
  version '2.1.0'
  sha256 '48a91ec1a73fee949ebe69c756b7de92aacd5d1315eeee41e56ae658e996da30'

  url "https://github.com/eivindveg/HotSUploader/releases/download/v#{version}/HotS.Replay.Uploader-#{version}.dmg"
  appcast 'https://github.com/eivindveg/HotSUploader/releases.atom',
          checkpoint: 'b701786f9df44f0fc4015c881df0abdfefb75912511abde5025d84346ae61477'
  name 'HotS Replay Uploader'
  homepage 'https://github.com/eivindveg/HotSUploader/'
  license :apache

  app 'HotS Replay Uploader.app'
end
