cask 'picturesque' do
  version :latest
  sha256 :no_check

  url 'http://www.acqualia.com/files/download.php?product=picturesque'
  appcast 'http://www.acqualia.com/picturesque/appcast/appcast3.xml',
          :sha256 => '597de40a8a549cf1bebcfb2f55d5d404dcb4cab18a3ec84f82a47a5249768dd2'
  name 'Picturesque'
  homepage 'http://www.acqualia.com/picturesque/'
  license :commercial

  app 'Picturesque.app'
end
