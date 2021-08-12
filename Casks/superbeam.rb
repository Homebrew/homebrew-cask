cask "superbeam" do
  version "1.0.0,10.2"
  sha256 :no_check

  url "https://superbe.am/download/5163"
  name "SuperBeam"
  desc "File sharing utility for Android devices"
  homepage "https://superbe.am/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "SuperBeam.app"
end
