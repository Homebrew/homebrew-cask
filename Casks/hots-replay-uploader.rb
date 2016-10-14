cask 'hots-replay-uploader' do
  version '2.1.1'
  sha256 'f338c76bdc2fb875d445ddeb4fe6734fedc932381268f228dcc6c2dfe02a6735'

  url "https://github.com/eivindveg/HotSUploader/releases/download/v#{version}/HotS.Replay.Uploader-#{version}.dmg"
  appcast 'https://github.com/eivindveg/HotSUploader/releases.atom',
          checkpoint: 'bfe84d8cb453a9b75cb5ac94a4fbb2729b5d4c0983a4f0536535f9d93aa842c5'
  name 'HotS Replay Uploader'
  homepage 'https://github.com/eivindveg/HotSUploader/'

  app 'HotS Replay Uploader.app'
end
