cask 'mozart' do
  version '1.4.0.20120201'
  sha256 'df03e42ca0da5700f49d3ae036758bac762cbc3a95d4e69c4bc4aabb54e6f92b'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/mozart-oz/Mozart-#{version}.zip"
  name 'Mozart'
  homepage 'http://www.mozart-oz.org'
  license :oss

  app 'Mozart.app'
end
