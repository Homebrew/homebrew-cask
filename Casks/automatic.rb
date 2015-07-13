cask :v1 => 'automatic' do
  version '2.4.6.391'
  sha256 '4e3f82fb37276d8ae3f3a6ecdf7c30f0c3612c1696fe3f030b0804ecd0217a55'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://com-codingcurious-downloads.s3.amazonaws.com/Automatic.#{version}.zip"
  appcast 'http://update.codingcurious.com/automatic/appcast2.xml',
          :sha256 => 'a6815fa749fb59e725ddb525692bec4f34d8953b307114bf51fb21ab0d331fb4'
  name 'Automatic'
  homepage 'http://codingcurious.com/automatic/'
  license :commercial

  prefpane 'Automatic.prefPane'
end
