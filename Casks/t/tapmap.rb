cask "tapmap" do
  arch arm: "arm64", intel: "x86_64"

  version "1.14.2"
  sha256 arm:   "0dacf061af2e5486082a0ffadff1d1d8863efdbbd6d64d0229e781ecfd2430ea",
         intel: "62fb1dff4103b0a9fca21060350165408f16974004829333087033312b27120c"

  url "https://github.com/olalie/tapmap/releases/download/v#{version}/TapMap-#{version}-macos-#{arch}.dmg"
  name "TapMap"
  desc "Visualise network connections on an interactive world map"
  homepage "https://tip.no/tapmap/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "TapMap.app"

  uninstall quit:       "no.tip.tapmap",
            login_item: "TapMap"

  zap trash: "~/Library/Application Support/TapMap"
end
