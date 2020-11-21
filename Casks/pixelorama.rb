cask "pixelorama" do
  version "v0.8.1"
  sha256 "0982080bea8f0d80235ce98c9cb3f576847acef90622e766b05c5e9ab448bb9f"

  # github.com/Orama-Interactive/Pixelorama/ was verified as official when first introduced to the cask
  url "https://github.com/Orama-Interactive/Pixelorama/releases/download/#{version}/Pixelorama.Mac.dmg"
  appcast "https://github.com/Orama-Interactive/Pixelorama/releases.atom"
  name "Pixelorama"
  desc "Free & open-source 2D sprite editor, made with the Godot Engine"
  homepage "https://orama-interactive.itch.io/pixelorama"

  app "Pixelorama.app"
end
