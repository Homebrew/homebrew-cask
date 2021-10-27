cask "pixelorama" do
  version "0.9"
  sha256 "847544ab47b5967177c0ffd66ca6605b83feb75d807b6de187ed6a66f56a1604"

  url "https://github.com/Orama-Interactive/Pixelorama/releases/download/v#{version}/Pixelorama.Mac.dmg",
      verified: "github.com/Orama-Interactive/Pixelorama/"
  name "Pixelorama"
  desc "2D sprite editor made with the Godot Engine"
  homepage "https://orama-interactive.itch.io/pixelorama"

  app "Pixelorama.app"

  zap trash: "~/Library/Saved Application State/com.orama_interactive.pixelorama.savedState"
end
