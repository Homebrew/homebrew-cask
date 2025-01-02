cask "jet-pilot" do
  arch arm: "aarch64", intel: "x64"

  version "1.32.0"
  sha256  arm:   "095952e3be1d15d57863b83b2da77d8b048b77fcacfc0b8b1e428983f7624094",
          intel: "e2abee1b30dba166d40389d473f3f1675e765d2a17e33b2c3bf33d448742ee92"

  url "https://github.com/unxsist/jet-pilot/releases/download/v#{version}/JET.Pilot_#{version}_#{arch}.dmg",
      verified: "github.com/unxsist/jet-pilot/"
  name "JET Pilot"
  desc "Kubernetes desktop client"
  homepage "https://www.jet-pilot.app/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "JET Pilot.app"

  zap trash: "~/Library/Application Support/com.unxsist.jetpilot"
end
