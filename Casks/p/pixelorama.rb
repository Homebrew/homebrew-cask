cask "pixelorama" do
  version "1.1.5"
  sha256 "68b5a97b7e35c19a26ba03df3669d763016af3c038f771de68bc2aff2fd80d49"

  url "https://github.com/Orama-Interactive/Pixelorama/releases/download/v#{version}/Pixelorama-Mac.dmg",
      verified: "github.com/Orama-Interactive/Pixelorama/"
  name "Pixelorama"
  desc "2D sprite editor made with the Godot Engine"
  homepage "https://orama-interactive.itch.io/pixelorama"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :high_sierra"

  app "Pixelorama.app"

  zap trash: "~/Library/Saved Application State/com.orama_interactive.pixelorama.savedState"
end
