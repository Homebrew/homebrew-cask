cask 'picturesque' do
  version :latest
  sha256 :no_check

  url 'http://www.acqualia.com/files/download.php?product=picturesque'
  appcast 'http://www.acqualia.com/picturesque/appcast/appcast3.xml',
          :checkpoint => '7db4a3309234e776218d3191220b897233e1c8c05ea7e69a11ceb2338c1be23f'
  name 'Picturesque'
  homepage 'http://www.acqualia.com/picturesque/'
  license :commercial

  app 'Picturesque.app'
end
