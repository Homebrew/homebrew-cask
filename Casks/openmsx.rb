cask :v1 => 'openmsx' do
  version :latest
  sha256 :no_check

  url 'http://sourceforge.net/projects/openmsx/files/latest/download'
  homepage 'http://openmsx.sourceforge.net'
  license :oss

  app 'openMSX.app'
end
