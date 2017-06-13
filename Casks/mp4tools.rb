cask 'mp4tools' do
  version '3.6.5'
  sha256 '301e1e18ea21d51eabc94ebd6dce8959f0e15d2e0dd6598cb8fb38d22665a7c8'

  url "http://www.emmgunn.com/downloads/mp4tools#{version}.zip",
      referer: 'http://www.emmgunn.com/mp4tools-home/mp4tools-downloads/'
  name 'MP4tools'
  homepage 'http://www.emmgunn.com/mp4tools-home/'

  app "mp4tools#{version}/MP4Tools.app"
end
