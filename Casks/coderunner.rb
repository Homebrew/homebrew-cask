cask 'coderunner' do
  version '2.1.1'
  sha256 '8b18a0db9966c537b6eb7b36502e74fa93cfed20aa06e4c56c57ecf3cc9e304c'

  # dktfof1z89xc1.cloudfront.net was verified as official when first introduced to the cask
  url "https://dktfof1z89xc1.cloudfront.net/CodeRunner%20#{version}.zip"
  appcast 'https://coderunnerapp.com/appcast.xml',
          checkpoint: 'aa635031ef7f7c3f2badded4fc5c2ff98009ed9b4c28c8d4aeb722a855a8e204'
  name 'CodeRunner'
  homepage 'https://coderunnerapp.com/'
  license :commercial

  app 'CodeRunner.app'
end
