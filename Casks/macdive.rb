cask "macdive" do
  version "2.14.0"
  sha256 "581ef4f6cdfcb26dcd9f1e2bfbe311cfdc35a1d69c7c05de110213b37f126d42"

  url "https://www.mac-dive.com/downloads/MacDive_#{version}.dmg"
  name "MacDive"
  desc "Digital dive log"
  homepage "https://www.mac-dive.com/"

  livecheck do
    url "https://www.mac-dive.com/shimmer/?appcast&appName=MacDive"
    strategy :sparkle
  end

  app "MacDive.app"
end
