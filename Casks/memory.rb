cask 'memory' do
  version '2020.14'
  sha256 '376167bd5cd7f05b321fdaf88bad74e495fbac139fb692d870964c7396277327'

  # memorymacapp.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url 'https://memorymacapp.s3.amazonaws.com/Memory.zip'
  appcast 'https://memorymacapp.s3-eu-west-1.amazonaws.com/sparkle.xml'
  name 'Memory Tracker by Timely'
  homepage 'https://memory.ai/timely/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Memory.app'
end
