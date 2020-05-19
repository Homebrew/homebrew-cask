cask 'memory' do
  version '2020.11'
  sha256 '43e9f6dc2d025a5b1158693125af051dd6d3009045a9e564eb6cf5b3241974a3'

  # memorymacapp.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url 'https://memorymacapp.s3.amazonaws.com/Memory.zip'
  appcast 'https://memorymacapp.s3-eu-west-1.amazonaws.com/sparkle.xml'
  name 'Memory Tracker by Timely'
  homepage 'https://memory.ai/timely/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Memory.app'
end
