cask 'marsedit' do
  version '3.7.7'
  sha256 'babe064e3e7871895fbcf5f163047782965fa7c1ac6d855988090994e6d08049'

  url "http://www.red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast 'https://www.red-sweater.com/marsedit/appcast3.php',
          checkpoint: '5b2b69a7d1ae90682f192f32b3849c288c800f4a9bae6a22277ab5c1a4d81b00'
  name 'MarsEdit'
  homepage 'https://www.red-sweater.com/marsedit/'
  license :commercial

  app 'MarsEdit.app'
end
