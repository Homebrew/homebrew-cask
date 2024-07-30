cask "pixelorama" do
  version "1.0"
  sha256 "88b4e4ea89d6ff271631e26e1deb91ae84aec7e4def15df3faaa36417fd961c9"

  url "https://github.com/Orama-Interactive/Pixelorama/releases/download/v#{version}/Pixelorama-Mac.dmg",
      verified: "github.com/Orama-Interactive/Pixelorama/"
  name "Pixelorama"
  desc "2D sprite editor made with the Godot Engine"
  homepage "https://orama-interactive.itch.io/pixelorama"

  app "Pixelorama.app"

  zap trash: "~/Library/Saved Application State/com.orama_interactive.pixelorama.savedState"
end
