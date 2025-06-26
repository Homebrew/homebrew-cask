cask "pixelorama" do
  version "1.1.2"
  sha256 "fdd30bb412523979ace21256e50801e13fcccada3f0dc4a0dcb72e166175e6d1"

  url "https://github.com/Orama-Interactive/Pixelorama/releases/download/v#{version}/Pixelorama-Mac.dmg",
      verified: "github.com/Orama-Interactive/Pixelorama/"
  name "Pixelorama"
  desc "2D sprite editor made with the Godot Engine"
  homepage "https://orama-interactive.itch.io/pixelorama"

  depends_on macos: ">= :sierra"

  app "Pixelorama.app"

  zap trash: "~/Library/Saved Application State/com.orama_interactive.pixelorama.savedState"
end
