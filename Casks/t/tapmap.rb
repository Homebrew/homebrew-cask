cask "tapmap" do
  arch arm: "arm64", intel: "x86_64"

  version "1.14.6"
  sha256 arm:   "390fd0e6106b2d4fce837821f8cbc40270defb195f0388464dbc53a83bce68d2",
         intel: "a4bed0bd238d4b1ed2eba2e2a69594e5b28cb690cb94cdb4e065a151336e4c6c"

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
