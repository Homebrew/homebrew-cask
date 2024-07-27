cask "mkvtools" do
  version "3.7.2"
  sha256 "c7b4ab1a0031146ad76660b526e3be778eefa2d1ffaf590023c9b1d839e433e1"

  url "https://www.emmgunn.com/downloads/mkvtools#{version}.zip"
  name "MKVtools"
  desc "App to create and edit MKV videos"
  homepage "https://www.emmgunn.com/mkvtools-home/"

  livecheck do
    url "https://emmgunn.com/mkvtools-home/mkvtools-downloads/"
    regex(%r{href=.*?/mkvtools(\d+(?:\.\d+)*)\.zip}i)
  end

  app "mkvtools#{version}/MKVtools.app"

  zap trash: [
    "~/Library/Application Support/EmmGunn",
    "~/Library/Preferences/com.emmgunn.MKVtools#{version.major}.plist",
  ]

  caveats do
    requires_rosetta
  end
end
