cask 'coderunner' do
  version '3.0.1'
  sha256 '31976c2551102eb07c3c20b578664a0697a92299c53a4956bc7353c7440a81fa'

  # dktfof1z89xc1.cloudfront.net was verified as official when first introduced to the cask
  url "https://dktfof1z89xc1.cloudfront.net/CodeRunner-#{version}.zip"
  appcast 'https://coderunnerapp.com/appcast.xml'
  name 'CodeRunner'
  homepage 'https://coderunnerapp.com/'

  app 'CodeRunner.app'
end
