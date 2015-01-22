cask :v1 => 'gawker' do
  version :latest
  sha256 :no_check

  url 'http://sourceforge.net/projects/gawker/files/latest/download'
  appcast 'http://gawker.sourceforge.net/appcast.xml'
  name 'Gawker'
  homepage 'http://gawker.sourceforge.net/Gawker.html'
  license :oss

  app 'Gawker.app'
end
