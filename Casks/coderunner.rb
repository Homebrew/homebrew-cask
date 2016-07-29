cask 'coderunner' do
  version '2.2.1'
  sha256 '9ffbe6ae8ab3636a31a9855d8a334d838bc964ab8da1c0e22b6c063ebb114eaa'

  # dktfof1z89xc1.cloudfront.net was verified as official when first introduced to the cask
  url "https://dktfof1z89xc1.cloudfront.net/CodeRunner-#{version}.zip"
  appcast 'https://coderunnerapp.com/appcast.xml',
          checkpoint: '646d31985b3a1407ba36c0db3850925fd12c14821b64c5a2e2514337c9a834e0'
  name 'CodeRunner'
  homepage 'https://coderunnerapp.com/'
  license :commercial

  app 'CodeRunner.app'
end
