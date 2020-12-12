cask "mp4tools" do
  version "3.7.2"
  sha256 "e4101837c5539f3f0441af3a1f02219636124a0f80e02f733f04cbf05ec11123"

  url "http://www.emmgunn.com/downloads/mp4tools#{version}.zip",
      referer: "http://www.emmgunn.com/mp4tools-home/mp4tools-downloads/"
  appcast "http://www.emmgunn.com/mp4tools-home/mp4tools-downloads/"
  name "MP4tools"
  desc "Create and edit MP4 videos"
  homepage "http://www.emmgunn.com/mp4tools-home/"

  app "mp4tools#{version}/MP4Tools.app"
end
