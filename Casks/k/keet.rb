cask "keet" do
  arch arm: "Apple-Silicon", intel: "Intel"

  version "2.5.0"
  sha256  arm:   "2f21c37784678967d2b2609d5bc09cb94fec35dd0d47a2a2e99466633b354f78",
          intel: "16f1a0fdadd7d8d553a84b102ca32bcb1216e2ddc22a092496bf02128ca3dbb0"

  url "https://keet.io/downloads/#{version}/Keet-#{arch}.dmg"
  name "keet"
  desc "Peer-to-peer video and text chat"
  homepage "https://keet.io/"

  livecheck do
    url "https://keet.io/downloads/"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Keet.app"

  zap trash: [
    "~/Library/Application Support/pear",
    "~/Library/Application Support/pear-runtime",
    "~/Library/Saved Application State/io.keet.app.savedState",
  ]
end
