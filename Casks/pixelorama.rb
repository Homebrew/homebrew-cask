cask "pixelorama" do
  version "0.10.1"
  sha256 "eb7cc92ca887f1751e62681409472502d337059417de762d09226ccee839248e"

  url "https://github.com/Orama-Interactive/Pixelorama/releases/download/v#{version}/Pixelorama.Mac.dmg",
      verified: "github.com/Orama-Interactive/Pixelorama/"
  name "Pixelorama"
  desc "2D sprite editor made with the Godot Engine"
  homepage "https://orama-interactive.itch.io/pixelorama"

  app "Pixelorama.app"

  zap trash: "~/Library/Saved Application State/com.orama_interactive.pixelorama.savedState"
end
