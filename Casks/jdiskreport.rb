cask 'jdiskreport' do
  version '1.4.1'
  sha256 'cb64f3d7ea8e43b142a69cabdded832b8de8e503766ccf1c7a16b314d2bc0d44'

  url "http://www.jgoodies.com/download/jdiskreport/jdiskreport-#{version.dots_to_underscores}-mac.zip"
  name 'JDiskReport'
  homepage 'http://www.jgoodies.com/freeware/jdiskreport/'

  app "JDiskReport #{version}/JDiskReport.app"
end
