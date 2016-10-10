cask 'soundmate' do
  version '3.2.0'
  sha256 '00310fb78af68b1b1063b7c9cd7f0e393272f970007cc292face8cce0595159a'

  url "http://www.icyarrow.com/soundmate/SoundMate_v#{version}.zip"
  appcast 'http://www.icyarrow.com/soundmate/soundmatecast.xml',
          checkpoint: 'd8c653fc7fe214355b86072077f94279635a70da3d01f7d07b21381ed4a7d4d8'
  name 'soundmate'
  homepage 'http://www.icyarrow.com/soundmate'

  app 'SoundMate.app'
end
