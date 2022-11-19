cask "fiji" do
  version "20221118-2117"
  sha256 "83c82d32db67193f973c31f2877a51422c5eed5c4c675d0eb0ceaad5002d94fe"

  url "https://downloads.imagej.net/fiji/archive/#{version}/fiji-macosx.zip",
      verified: "downloads.imagej.net/fiji/archive/"
  name "Fiji"
  desc "Open-source image processing package"
  homepage "https://fiji.sc/"

  livecheck do
    url "https://downloads.imagej.net/fiji/archive/"
    regex(/(\d{8}-\d{4})/i)
  end

  auto_updates true

  app "Fiji.app"
end
