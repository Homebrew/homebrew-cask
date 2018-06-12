cask 'soundmate' do
  version '3.2.2'
  sha256 'fdc2a8efa8c2ff6fb1c3c0202d98a9938aaf56960c4399f4ecca614207e74ff8'

  url "https://www.icyarrow.com/soundmate/SoundMate_v#{version}.zip"
  appcast 'https://www.icyarrow.com/soundmate/soundmatecast.xml'
  name 'soundmate'
  homepage 'https://www.icyarrow.com/soundmate/'

  app 'SoundMate.app'
end
