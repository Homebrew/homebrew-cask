cask "tapmap" do
  arch arm: "arm64", intel: "x86_64"

  version "1.14.1"
  sha256 arm:   "00a6a65dddbef291d27c7e6393381fb7239954c8acdad258692051f1a25202a1",
         intel: "84c70b9348cd16d982158a24e14d67ae08f7a6b17777d0679d08b1c60590e854"

  url "https://github.com/olalie/tapmap/releases/download/v#{version}/TapMap-#{version}-macos-#{arch}.dmg"
  name "TapMap"
  desc "Visualize network connections on an interactive world map"
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
