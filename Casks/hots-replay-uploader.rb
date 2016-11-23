cask 'hots-replay-uploader' do
  version '2.1.3'
  sha256 '2a5e8f6414c3e60a2da573657614e05ce30005dc94b98cc0734c9e4c77368f13'

  url "https://github.com/eivindveg/HotSUploader/releases/download/v#{version}/HotS.Replay.Uploader-#{version}.dmg"
  appcast 'https://github.com/eivindveg/HotSUploader/releases.atom',
          checkpoint: 'db2c8e09acbc82472b7b4a907e628249b785e3b669327157a2984d9b36477649'
  name 'HotS Replay Uploader'
  homepage 'https://github.com/eivindveg/HotSUploader/'

  app 'HotS Replay Uploader.app'
end
