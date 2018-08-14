cask 'coderunner' do
  version '2.3'
  sha256 '0e086e416827b0262d65ca3bdcec82a81c5ba6eff5018582d324e0cd3a343dd8'

  # dktfof1z89xc1.cloudfront.net was verified as official when first introduced to the cask
  url "https://dktfof1z89xc1.cloudfront.net/CodeRunner-#{version}.zip"
  appcast 'https://coderunnerapp.com/appcast.xml'
  name 'CodeRunner'
  homepage 'https://coderunnerapp.com/'

  app 'CodeRunner.app'
end
