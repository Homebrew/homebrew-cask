cask :v1 => 'arrsync' do
  version :latest
  sha256 :no_check

  url 'https://sourceforge.net/projects/arrsync/files/latest/download'
  homepage 'http://arrsync.sourceforge.net'
  license :oss

  app 'arRsync.app'
end
