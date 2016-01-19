cask 'picturesque' do
  version '2.4.5-937'
  sha256 'f1b91abcee428783de1bfe328aae36f1315741ee61ea62d05b35f1bbc8830f8a'

  url "http://www.acqualia.com/files/sparkle/picturesque_#{version}.zip"
  appcast 'http://www.acqualia.com/picturesque/appcast/appcast3.xml',
          checkpoint: '7db4a3309234e776218d3191220b897233e1c8c05ea7e69a11ceb2338c1be23f'
  name 'Picturesque'
  homepage 'http://www.acqualia.com/picturesque/'
  license :commercial

  app 'Picturesque.app'
end
