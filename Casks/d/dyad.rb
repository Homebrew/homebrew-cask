cask "dyad" do
  arch arm: "arm64", intel: "x64"

  version "1.6.1"
  sha256 arm:   "241364b6e3246ca13a940e10eb1d40255c5cc5914035f62d263a09e37fb9567e",
         intel: "e978af692091e9fc44695586148021a96ed840d7c87612f63ec65afc121b311a"

  url "https://github.com/dyad-sh/dyad/releases/download/v#{version}/dyad-darwin-#{arch}-#{version}.zip",
      verified: "github.com/dyad-sh/dyad/"
  name "Dyad"
  desc "AI-powered app builder"
  homepage "https://dyad.sh/"

  livecheck do
    url "https://api.dyad.sh/v1/update/stable/dyad-sh/dyad/darwin-#{arch}/0.0.0"
    regex(%r{/v?(\d+(?:\.\d+)+)/}i)
    strategy :json do |json|
      json["url"]&.[](regex, 1)
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "dyad.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.dyad.sfl*",
    "~/Library/Application Support/dyad",
    "~/Library/Caches/com.electron.dyad",
    "~/Library/Caches/com.electron.dyad.ShipIt",
    "~/Library/HTTPStorages/com.electron.dyad",
    "~/Library/Logs/dyad",
    "~/Library/Preferences/com.electron.dyad.plist",
  ], rmdir: "~/dyad-apps"
end
