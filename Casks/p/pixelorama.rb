cask "pixelorama" do
  version "1.1"
  sha256 "f9996309be935974d87d2f64587686ccdf60b335a2699ad7e94bed5a285eaf69"

  url "https://github.com/Orama-Interactive/Pixelorama/releases/download/v#{version}/Pixelorama-Mac.dmg",
      verified: "github.com/Orama-Interactive/Pixelorama/"
  name "Pixelorama"
  desc "2D sprite editor made with the Godot Engine"
  homepage "https://orama-interactive.itch.io/pixelorama"

  depends_on macos: ">= :sierra"

  app "Pixelorama.app"

  zap trash: "~/Library/Saved Application State/com.orama_interactive.pixelorama.savedState"
end
