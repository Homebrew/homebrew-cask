cask 'fstream' do
  version '1.4.9'
  sha256 '50eb2abf24b5e09b42d66f07ca2145d13fa6d350932efd0fa3317ef41178000f'

  url 'http://www.sourcemac.com/fstream_FStream.tgz'
  appcast 'http://www.sourcemac.com/sparkle.php?id=156&content=xml',
          checkpoint: 'b72e062b69d0a4bcf1a2a5f8acc4da87b09a849756bb2785d1435ab18d5579e1'
  name 'FStream'
  homepage 'http://www.sourcemac.com/?page=fstream'
  license :gratis

  app 'FStream.app'
end
