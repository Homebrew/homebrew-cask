cask 'freefilesync' do
  version '8.8'
  sha256 'f8a9878fed6b88eb7f0f48a105d2da771f2c203fae865776a3d581481b9a1f52'

  # download673.mediafire.com/kd71fs8nd0ng/x47b3389dwyx8k5 was verified as official when first introduced to the cask.
  url "https://download673.mediafire.com/kd71fs8nd0ng/x47b3389dwyx8k5/FreeFileSync_#{version}_macOS.zip"
  name 'FreeFileSync'
  homepage 'https://www.freefilesync.org/'

  app 'FreeFileSync.app'
  app 'RealtimeSync.app'
end
