cask "jet-pilot" do
  arch arm: "aarch64", intel: "x64"

  version "1.31.1"
  sha256  arm:   "912225a43aaad3b7fd4fb0224ed017fd4b25b4a46339e363935472cfb41269ac",
          intel: "f88e55da1b922681acbef0f1e235c9c997d6187f2716073ff441e85f53f83f58"

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
