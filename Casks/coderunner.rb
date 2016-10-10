cask 'coderunner' do
  version '2.2.2'
  sha256 'f8b9ac72cf73aca026f4e386def197761dabaf0514703d1b6694724845df774b'

  # dktfof1z89xc1.cloudfront.net was verified as official when first introduced to the cask
  url "https://dktfof1z89xc1.cloudfront.net/CodeRunner-#{version}.zip"
  appcast 'https://coderunnerapp.com/appcast.xml',
          checkpoint: '65c88fcefb58847ce8dc929ad22d3fc99dd07cdbfa67296ad53d726d34859770'
  name 'CodeRunner'
  homepage 'https://coderunnerapp.com/'

  app 'CodeRunner.app'
end
