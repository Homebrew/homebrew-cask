cask "tapmap" do
  arch arm: "arm64", intel: "x86_64"

  version "1.14.5"
  sha256 arm:   "65341a81745ec7e3cb834949f5de263c7d658355747c214d7350a6c88a2e06ce",
         intel: "de63344ae60ec2ad47b1927a10b324ce899b8e3bde3156e9272dfa8db79547fa"

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
