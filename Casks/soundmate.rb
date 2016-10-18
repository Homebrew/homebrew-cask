cask 'soundmate' do
  version '3.2.2'
  sha256 'fdc2a8efa8c2ff6fb1c3c0202d98a9938aaf56960c4399f4ecca614207e74ff8'

  url "http://www.icyarrow.com/soundmate/SoundMate_v#{version}.zip"
  appcast 'http://www.icyarrow.com/soundmate/soundmatecast.xml',
          checkpoint: '5886a39685690a4a1526a6cd1909e40100faa353e552a3530383655bd707aa51'
  name 'soundmate'
  homepage 'http://www.icyarrow.com/soundmate'

  app 'SoundMate.app'
end
