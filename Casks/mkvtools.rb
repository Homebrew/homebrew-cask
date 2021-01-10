cask "mkvtools" do
  version "3.7.2"
  sha256 "c7b4ab1a0031146ad76660b526e3be778eefa2d1ffaf590023c9b1d839e433e1"

  url "https://www.emmgunn.com/downloads/mkvtools#{version}.zip"
  name "MKVtools"
  desc "App to create and edit MKV videos"
  homepage "https://www.emmgunn.com/mkvtools-home/"

  livecheck do
    url "https://www.emmgunn.com/mkvtools-home/mkvtools-downloads/"
    strategy :page_match
    regex(%r{href=.*?/mkvtools(\d+(?:\.\d+)*)\.zip}i)
  end

  app "mkvtools#{version}/MKVtools.app"
end
