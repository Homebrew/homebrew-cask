cask "pixelorama" do
  version "0.11.4"
  sha256 "efd5247ce8700bcd36ff085472a172165051ca65ec8dd2cc0f56a24e79e2dca7"

  url "https://github.com/Orama-Interactive/Pixelorama/releases/download/v#{version}/Pixelorama.Mac.dmg",
      verified: "github.com/Orama-Interactive/Pixelorama/"
  name "Pixelorama"
  desc "2D sprite editor made with the Godot Engine"
  homepage "https://orama-interactive.itch.io/pixelorama"

  app "Pixelorama.app"

  zap trash: "~/Library/Saved Application State/com.orama_interactive.pixelorama.savedState"
end
