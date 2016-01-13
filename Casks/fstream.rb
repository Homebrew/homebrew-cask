cask 'fstream' do
  version :latest
  sha256 :no_check

  url 'http://www.sourcemac.com/fstream_FStream.tgz'
  appcast 'http://www.sourcemac.com/sparkle.php?id=156&content=xml',
          :checkpoint => 'b72e062b69d0a4bcf1a2a5f8acc4da87b09a849756bb2785d1435ab18d5579e1'
  name 'FStream'
  homepage 'http://www.sourcemac.com/?page=fstream'
  license :gratis

  app 'FStream.app'
end
