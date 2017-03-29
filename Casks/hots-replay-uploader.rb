cask 'hots-replay-uploader' do
  version '2.1.4'
  sha256 '717b012359599efc6ccbbae3bbeb130c48ffc83c45885847fe0364bda8f37dcc'

  url "https://github.com/eivindveg/HotSUploader/releases/download/v#{version}/HotS.Replay.Uploader-#{version}.dmg"
  appcast 'https://github.com/eivindveg/HotSUploader/releases.atom',
          checkpoint: '470f8ede53d912c0f7b505bc13a71b53f45f7e98c3c929e7334cc9e20ca6d9c2'
  name 'HotS Replay Uploader'
  homepage 'https://github.com/eivindveg/HotSUploader/'

  app 'HotS Replay Uploader.app'
end
