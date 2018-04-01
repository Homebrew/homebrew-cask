cask 'hots-replay-uploader' do
  version '2.1.5'
  sha256 '2e943db51b2d635f359802b5b9ca7b701013b3aec87249c75903c8874307d825'

  url "https://github.com/eivindveg/HotSUploader/releases/download/v#{version}/HotS.Replay.Uploader-#{version}.dmg"
  appcast 'https://github.com/eivindveg/HotSUploader/releases.atom',
          checkpoint: 'ff63399424ce796f1af27379aba6a3d34acc60592f667672ca6ea01cdbff74e4'
  name 'HotS Replay Uploader'
  homepage 'https://github.com/eivindveg/HotSUploader/'

  app 'HotS Replay Uploader.app'
end
