cask "pixelorama" do
  version "0.8.2"
  sha256 "d3e62336878751f71e555984a7bcee8a6c39022b0f7884c7b566dedd15ba5576"

  url "https://github.com/Orama-Interactive/Pixelorama/releases/download/v#{version}/Pixelorama.Mac.dmg",
      verified: "github.com/Orama-Interactive/Pixelorama/"
  appcast "https://github.com/Orama-Interactive/Pixelorama/releases.atom"
  name "Pixelorama"
  desc "2D sprite editor made with the Godot Engine"
  homepage "https://orama-interactive.itch.io/pixelorama"

  app "Pixelorama.app"

  zap trash: "~/Library/Saved Application State/com.orama_interactive.pixelorama.savedState"
end
