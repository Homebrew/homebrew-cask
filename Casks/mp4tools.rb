cask 'mp4tools' do
  version '3.7.1'
  sha256 '49dc7e8dfdd3241ade458e60011b969ed600e80ad00d9434b03c062d691eb961'

  url "http://www.emmgunn.com/downloads/mp4tools#{version}.zip",
      referer: 'http://www.emmgunn.com/mp4tools-home/mp4tools-downloads/'
  name 'MP4tools'
  homepage 'http://www.emmgunn.com/mp4tools-home/'

  app "mp4tools#{version}/MP4Tools.app"
end
