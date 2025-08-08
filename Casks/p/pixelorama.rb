cask "pixelorama" do
  version "1.1.3"
  sha256 "9e6c5db431623acd0824d5a99e3d782ecdf9b22afb9c2e262ba2477c85f6e13a"

  url "https://github.com/Orama-Interactive/Pixelorama/releases/download/v#{version}/Pixelorama-Mac.dmg",
      verified: "github.com/Orama-Interactive/Pixelorama/"
  name "Pixelorama"
  desc "2D sprite editor made with the Godot Engine"
  homepage "https://orama-interactive.itch.io/pixelorama"

  disable! date: "2026-09-01", because: :unsigned

  depends_on macos: ">= :high_sierra"

  app "Pixelorama.app"

  zap trash: "~/Library/Saved Application State/com.orama_interactive.pixelorama.savedState"
end
