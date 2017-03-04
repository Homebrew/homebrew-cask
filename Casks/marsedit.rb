cask 'marsedit' do
  version '3.7.10'
  sha256 '02c1167ae85c65f18479d5d33a277fa80af6883eac505491e743ce9742d9fcef'

  url "https://red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast 'https://red-sweater.com/marsedit/appcast3.php',
          checkpoint: '7f03f23e30c36f35820cb3bf5aef3f7c4adbd579dc7c5380a4d633b4946b1a31'
  name 'MarsEdit'
  homepage 'https://red-sweater.com/marsedit/'

  app 'MarsEdit.app'
end
