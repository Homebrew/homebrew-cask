cask "tapmap" do
  arch arm: "arm64", intel: "x86_64"

  version "1.14.4"
  sha256 arm:   "17f2fcd50ce708cf934cf2428da376bdb2be7a8cd79da9ee22f3973c2f789355",
         intel: "f1524a7bf335d4a3f263013565a47133e9fe2ee96d260271b9b8288c4e42c61d"

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
