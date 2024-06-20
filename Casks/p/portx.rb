cask "portx" do
  arch arm: "arm64", intel: "x64"

  version "2.2.9,10.60"
  sha256 arm:   "BA7A6E2F636E002D17D035E9BF03C57FD617331DE7BFB631409D263DCF836C92",
         intel: "B2092CAAA80082CA265B6CA120252A440F991A16C79670FB115370B099B94A75"

  url "https://cdn.netsarang.net/0ac7ea20/PortX-#{version.csv.first}-#{arch}.dmg",
      verified: "cdn.netsarang.net/"
  name "portx"
  desc "SSH Client"
  homepage "https://portx.online/"

  livecheck do
    url "https://cdn.netsarang.net/0ac7ea20/PortX-latest-#{arch}.dmg"
    strategy :extract_plist
  end

  depends_on macos: ">= :catalina"

  app "PortX.app"

  zap trash: [
    "~/Library/Application Support/PortX",
    "~/Library/Logs/PortX",
  ]
end
