cask 'fstream' do
  version :latest
  sha256 :no_check

  url 'http://www.sourcemac.com/fstream_FStream.tgz'
  appcast 'http://www.sourcemac.com/sparkle.php?id=156&content=xml',
          :sha256 => '06d8e1aa53a1ad03b5446c10d4482d5bb38765dfb08a1253d14afdde7d2fa53e'
  name 'FStream'
  homepage 'http://www.sourcemac.com/?page=fstream'
  license :gratis

  app 'FStream.app'
end
