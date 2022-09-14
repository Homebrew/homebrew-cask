cask "fiji" do
  version "20220913-1702"
  sha256 "b1da701bb5ffcb72e8e8a814676739b5439d7246abd74269e06349ce5a911250"

  url "https://downloads.imagej.net/fiji/archive/#{version}/fiji-macosx.zip",
      verified: "downloads.imagej.net/fiji/archive/"
  name "Fiji"
  desc "Open-source image processing package"
  homepage "https://fiji.sc/"

  livecheck do
    url "https://downloads.imagej.net/fiji/archive/"
    regex(/(\d{8}-\d{4})/i)
  end

  app "Fiji.app"
end
