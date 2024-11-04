cask "jet-pilot" do
  arch arm: "aarch64", intel: "x64"

  version "1.31.0"
  sha256  arm:   "77c787e74cfc415870a448d481caeb78523f5c803d08b0443dfb8cbb45b4bf86",
          intel: "29fc8df5a2e133510e0c35cd49a05856045c75c917a0531f46d519e52a410cd7"

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
