cask 'coderunner' do
  version '2.1.1'
  sha256 '8b18a0db9966c537b6eb7b36502e74fa93cfed20aa06e4c56c57ecf3cc9e304c'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://dktfof1z89xc1.cloudfront.net/CodeRunner%20#{version}.zip"
  appcast 'https://coderunnerapp.com/appcast.xml',
          :checkpoint => '96376821ad5f0fb6a193e5af27632f2410294268afd895602a4e22f533a86a76'
  name 'CodeRunner'
  homepage 'https://coderunnerapp.com/'
  license :commercial

  app 'CodeRunner.app'
end
