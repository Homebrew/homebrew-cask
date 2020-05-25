cask 'memory' do
  version '2020.12'
  sha256 'a6ebb3f3ebb8ff9f2a6de85d71e21d96ad78df3fb9541dbff1fedcb6e3f879ca'

  # memorymacapp.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url 'https://memorymacapp.s3.amazonaws.com/Memory.zip'
  appcast 'https://memorymacapp.s3-eu-west-1.amazonaws.com/sparkle.xml'
  name 'Memory Tracker by Timely'
  homepage 'https://memory.ai/timely/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Memory.app'
end
