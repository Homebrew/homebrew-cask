cask :v1 => 'fstream' do
  version :latest
  sha256 :no_check

  url 'http://www.sourcemac.com/fstream_FStream.tgz'
  appcast 'http://www.sourcemac.com/sparkle.php?id=156&content=xml',
          :sha256 => '01ef6ac710afdc6e9bff5969ee9bb3f4a04d9e962d94bf8c6755ba44409192ad'
  name 'FStream'
  homepage 'http://www.sourcemac.com/?page=fstream'
  license :gratis

  app 'FStream.app'
end
