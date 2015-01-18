cask :v1 => 'iupx' do
  version :latest
  sha256 :no_check

  url 'http://sourceforge.net/projects/iupx/files/latest/download'
  appcast 'http://iupx.sourceforge.net/updates/appcast.xml'
  name 'iUPX'
  homepage 'http://iupx.sourceforge.net'
  license :oss

  app 'iUPX.app'
end
