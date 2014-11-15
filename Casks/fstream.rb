cask :v1 => 'fstream' do
  version :latest
  sha256 :no_check

  url 'http://www.sourcemac.com/fstream_FStream.tgz'
  homepage 'http://www.sourcemac.com/?page=fstream'
  license :unknown

  app 'FStream.app'
end
