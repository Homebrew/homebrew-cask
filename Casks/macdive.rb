cask "macdive" do
  version "2.15.0"
  sha256 "82993c29c1fe8be09bb0860951fc958d4a671bb09414723ed1fb27727a9b1b09"

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
