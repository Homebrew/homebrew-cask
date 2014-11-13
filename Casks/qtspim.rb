cask :v1 => 'qtspim' do
  version :latest
  sha256 :no_check

  url 'https://sourceforge.net/projects/spimsimulator/files/latest/download'
  homepage 'http://spimsimulator.sourceforge.net/'
  license :oss

  app 'QtSpim.app'
end
