cask 'soundmate' do
  version '3.2.1'
  sha256 '3fadf8ddc7950738bd34e9e92f66eeca5f603797110837e31d0113fe42be7b54'

  url "http://www.icyarrow.com/soundmate/SoundMate_v#{version}.zip"
  appcast 'http://www.icyarrow.com/soundmate/soundmatecast.xml',
          checkpoint: 'd8c653fc7fe214355b86072077f94279635a70da3d01f7d07b21381ed4a7d4d8'
  name 'soundmate'
  homepage 'http://www.icyarrow.com/soundmate'

  app 'SoundMate.app'
end
