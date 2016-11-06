cask 'hots-replay-uploader' do
  version '2.1.2'
  sha256 'a5e6dcb97ed05f74cbeb913b737bf70b19a02a8b9a6609f23fa5879bd6aa1f74'

  url "https://github.com/eivindveg/HotSUploader/releases/download/v#{version}/HotS.Replay.Uploader-#{version}.dmg"
  appcast 'https://github.com/eivindveg/HotSUploader/releases.atom',
          checkpoint: 'edebb36c29afebbe206191bb9e7fcfaa05df864c86e0516e44038dbbd61ac51b'
  name 'HotS Replay Uploader'
  homepage 'https://github.com/eivindveg/HotSUploader/'

  app 'HotS Replay Uploader.app'
end
