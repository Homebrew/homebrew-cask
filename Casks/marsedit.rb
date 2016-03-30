cask 'marsedit' do
  version '3.7.6'
  sha256 '849418b1b13d6e0707d50397b289deb0db625205e5eb410c46cd0572e18a567e'

  url "http://www.red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast 'https://www.red-sweater.com/marsedit/appcast3.php',
          checkpoint: '19a10766b35f42edaa16e7f9cb3b7b9d70c7bf6344a574ef6996f65a32c75373'
  name 'MarsEdit'
  homepage 'https://www.red-sweater.com/marsedit/'
  license :commercial

  app 'MarsEdit.app'
end
