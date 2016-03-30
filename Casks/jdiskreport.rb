cask 'jdiskreport' do
  version '1.4.1'
  sha256 'cb64f3d7ea8e43b142a69cabdded832b8de8e503766ccf1c7a16b314d2bc0d44'

  url "http://www.jgoodies.com/download/jdiskreport/jdiskreport-#{version.gsub('.', '_')}-mac.zip"
  name 'JDiskReport'
  homepage 'http://www.jgoodies.com/freeware/jdiskreport/'
  license :gratis

  app "JDiskReport #{version}/JDiskReport.app"
end
