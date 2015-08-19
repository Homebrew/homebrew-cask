cask :v1 => 'coderunner' do
  version '2.0.3'
  sha256 'ca0daec87dde3520e1dc1a486674f3a6048acf4f23dbe5c86d39c467800f142e'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://dktfof1z89xc1.cloudfront.net/CodeRunner%20#{version}.zip"
  appcast 'https://coderunnerapp.com/appcast.xml',
          :sha256 => 'bc0a476a000d50dfc0e4fe997838b13794c483dd1d41c85752b77c01c9a07594'
  name 'CodeRunner'
  homepage 'https://coderunnerapp.com/'
  license :commercial

  app 'CodeRunner.app'
end
