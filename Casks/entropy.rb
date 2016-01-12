cask 'entropy' do
  version '1.6.0'
  sha256 '62ae4d0607a0637d404fef709494951610a13a8d02d8f2d887e6501f98c55591'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://eigenlogik.s3.amazonaws.com/releases/entropy/Entropy-#{version}.zip"
  appcast 'http://hyperion.eigenlogik.com/appcast/feed/entropy/',
          :sha256 => '697eb2a2f99b3837e3415197677ddbf9970f27aebe00f2e0f5bc6d267cd050fa'
  name 'Entropy'
  homepage 'http://www.eigenlogik.com/entropy/'
  license :commercial

  app 'Entropy.app'
end
