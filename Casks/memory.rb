cask 'memory' do
  version '2020.09'
  sha256 '5d0d790fe1ddc5a364f507dd30de9ce00e87ddabfcd5b8437f613c642829bfe7'

  # memorymacapp.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url 'https://memorymacapp.s3.amazonaws.com/Memory.zip'
  appcast 'https://memorymacapp.s3-eu-west-1.amazonaws.com/sparkle.xml'
  name 'Memory Tracker by Timely'
  homepage 'https://memory.ai/timely/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Memory.app'
end
