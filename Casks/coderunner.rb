cask :v1 => 'coderunner' do
  version '2.0.3'
  sha256 'ca0daec87dde3520e1dc1a486674f3a6048acf4f23dbe5c86d39c467800f142e'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://dktfof1z89xc1.cloudfront.net/CodeRunner%20#{version}.zip"
  appcast 'https://coderunnerapp.com/appcast.xml',
          :sha256 => '390fdaad2854bcad2a12aa293bdc5872f7de52576e4a9c5192431b60773c7020'
  name 'CodeRunner'
  homepage 'https://coderunnerapp.com/'
  license :commercial

  app 'CodeRunner.app'
end
