cask "pixelorama" do
  version "1.1.9"
  sha256 "18f2847815234a8d34b741f5488ff2552b67a6462bcd09d1d04837f5242c5899"

  url "https://github.com/Orama-Interactive/Pixelorama/releases/download/v#{version}/Pixelorama-Mac.dmg",
      verified: "github.com/Orama-Interactive/Pixelorama/"
  name "Pixelorama"
  desc "2D sprite editor made with the Godot Engine"
  homepage "https://orama-interactive.itch.io/pixelorama"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :big_sur

  app "Pixelorama.app"

  zap trash: "~/Library/Saved Application State/com.orama_interactive.pixelorama.savedState"
end
