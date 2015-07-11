cask :v1 => 'cakebrew' do
  version '1.1.2'
  sha256 '5e5c4028fc94c663d3ff2d4cf14fdf160ec70a06e2616f5d5e4b87ad56fd1747'

  url "https://www.cakebrew.com/files/cakebrew-#{version}.dmg"
  appcast 'https://www.cakebrew.com/appcast/profileInfo.php',
          :sha256 => '3c5f3ea9179e8bf4d08b50f2cb4b52567ddd649726d17faadd2eaa1de44a09aa'
  name 'Cakebrew'
  homepage 'https://www.cakebrew.com/'
  license :gpl

  app 'Cakebrew.app'
end
