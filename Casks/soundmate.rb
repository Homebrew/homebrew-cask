cask 'soundmate' do
  version '3.1.0'
  sha256 '621939965058d551ec0e3c4429666ca5d8f85ba17eb939faf29c0ac51194e85b'

  url "http://www.icyarrow.com/soundmate/SoundMate_v#{version}.zip"
  appcast 'http://www.icyarrow.com/soundmate/soundmatecast.xml',
          checkpoint: '83f06353a7b8ac1f369750e214433d32c7f622eb25376a6415af180a2fcf15a9'
  name 'soundmate'
  homepage 'http://www.icyarrow.com/soundmate'
  license :commercial

  app 'SoundMate.app'
end
