cask 'mp4tools' do
  version '3.7.0'
  sha256 'cdaeb6c0864748676d2a311ed0a024a1775a4f955ca85d3c559f93f9ea843789'

  url "http://www.emmgunn.com/downloads/mp4tools#{version}.zip",
      referer: 'http://www.emmgunn.com/mp4tools-home/mp4tools-downloads/'
  name 'MP4tools'
  homepage 'http://www.emmgunn.com/mp4tools-home/'

  app "mp4tools#{version}/MP4Tools.app"
end
