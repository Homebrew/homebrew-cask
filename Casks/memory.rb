cask 'memory' do
  version '2020.08'
  sha256 '5313247b3c80ff9cebfc0cb9411d9a8d8b3d27b1aec046b9514f2698ce1bfa4b'

  # memorymacapp.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url 'https://memorymacapp.s3.amazonaws.com/Memory.zip'
  appcast 'https://memorymacapp.s3-eu-west-1.amazonaws.com/sparkle.xml'
  name 'Memory Tracker by Timely'
  homepage 'https://memory.ai/timely/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Memory.app'
end
