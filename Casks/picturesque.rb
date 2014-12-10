cask :v1 => 'picturesque' do
  version :latest
  sha256 :no_check

  url 'http://www.acqualia.com/files/download.php?product=picturesque'
  appcast 'http://www.acqualia.com/picturesque/appcast/appcast3.xml'
  homepage 'http://www.acqualia.com/picturesque/'
  license :unknown    # todo: improve this machine-generated value

  app 'Picturesque.app'
end
