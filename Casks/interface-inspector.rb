cask :v1 => 'interface-inspector' do
  version :latest
  sha256 :no_check

  url 'http://www.interface-inspector.com/download/Interface-Inspector-Latest.zip'
  homepage 'http://www.interface-inspector.com/'
  license :closed

  app 'Interface Inspector.app'
end
