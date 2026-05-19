cask "drawshot" do
  arch arm: "-arm64", intel: ""

  version "1.4.3"
  sha256 arm:   "469405a3126b73846b0a2a2736617fbf292bda3a98e4bf7f0bc23fc8e09c70e8",
         intel: "929b888380f82da93802853360c3765b1ff2e3049191eff8ac688ec68506d384"

  url "https://cdn.drawshot.dev/downloads/DrawShot-#{version}#{arch}.dmg",
      verified: "cdn.drawshot.dev/downloads/"
  name "DrawShot"
  desc "Instant screenshot annotation tool"
  homepage "https://drawshot.dev/"

  livecheck do
    url "https://drawshot.dev/download"
    regex(/DrawShot[._-]v?(\d+(?:\.\d+)+)[._-](?:arm64\.)?dmg/i)
  end

  auto_updates false
  depends_on macos: ">= :ventura"

  app "DrawShot.app"

  zap trash: [
    "~/Library/Application Support/DrawShot",
    "~/Library/Preferences/com.drawshot.app.plist",
    "~/Library/Saved Application State/com.drawshot.app.savedState",
    "~/Library/Caches/com.drawshot.app",
    "~/Library/Logs/DrawShot",
  ]
end
