cask :v1 => 'coderunner' do
  version '2.1.1'
  sha256 '8b18a0db9966c537b6eb7b36502e74fa93cfed20aa06e4c56c57ecf3cc9e304c'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://dktfof1z89xc1.cloudfront.net/CodeRunner%20#{version}.zip"
  appcast 'https://coderunnerapp.com/appcast.xml',
          :sha256 => '9b2e8558235267858dfc4af85fc8c5e7f24c41f0535256ea5300409c5571866c'
  name 'CodeRunner'
  homepage 'https://coderunnerapp.com/'
  license :commercial

  app 'CodeRunner.app'
end
