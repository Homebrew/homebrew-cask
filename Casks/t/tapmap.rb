cask "tapmap" do
  arch arm: "arm64", intel: "x86_64"

  version "1.14.7"
  sha256 arm:   "54811a9ce50adeda15446de11568594bd0cca7a27d7253c32b97f44a737561ee",
         intel: "020168840b9922358dcc944caabdb4eb96f91abe999367277d9fac4a10a76944"

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
