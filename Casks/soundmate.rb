cask 'soundmate' do
  version '3.2.2'
  sha256 'fdc2a8efa8c2ff6fb1c3c0202d98a9938aaf56960c4399f4ecca614207e74ff8'

  url "https://www.icyarrow.com/soundmate/SoundMate_v#{version}.zip"
  appcast 'https://www.icyarrow.com/soundmate/soundmatecast.xml',
          checkpoint: 'b2f287b0f27f471d9cbeb727073a351148474f12ec45595a9b35396b45fb1f0b'
  name 'soundmate'
  homepage 'https://www.icyarrow.com/soundmate/'

  app 'SoundMate.app'
end
