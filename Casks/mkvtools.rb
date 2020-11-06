cask "mkvtools" do
  version "3.7.2"
  sha256 "c7b4ab1a0031146ad76660b526e3be778eefa2d1ffaf590023c9b1d839e433e1"

  url "http://www.emmgunn.com/downloads/mkvtools#{version}.zip"
  appcast "http://www.emmgunn.com/mkvtools-home/mkvtools-downloads/"
  name "MKVtools"
  desc "App to create and edit MKV videos"
  homepage "http://www.emmgunn.com/mkvtools-home/"

  app "mkvtools#{version}/MKVtools.app"
end
