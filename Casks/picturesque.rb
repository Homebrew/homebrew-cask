cask 'picturesque' do
  version '2.4.5-937'
  sha256 'f1b91abcee428783de1bfe328aae36f1315741ee61ea62d05b35f1bbc8830f8a'

  url "http://www.acqualia.com/files/sparkle/picturesque_#{version}.zip"
  appcast 'http://www.acqualia.com/picturesque/appcast/appcast3.xml',
          checkpoint: '4f16d575498f0b7dc3a8b4704ee41d32dbcb90b15083bee02ce52b754338e3e5'
  name 'Picturesque'
  homepage 'http://www.acqualia.com/picturesque/'
  license :commercial

  app 'Picturesque.app'
end
