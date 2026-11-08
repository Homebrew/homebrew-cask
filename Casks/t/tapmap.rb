cask "tapmap" do
  arch arm: "arm64", intel: "x86_64"

  version "1.14.3"
  sha256 arm:   "744a54822035f0bbacb1bcb999f3b31c8b6701e0e2439bff1bcb687aa2223524",
         intel: "9c3b7d6f406c968a1acaae8424e72215648ccff8fc504683ec4ab75a0f12f504"

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
