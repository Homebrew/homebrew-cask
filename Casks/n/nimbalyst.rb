cask "nimbalyst" do
  arch arm: "arm64", intel: "x64"

  version "0.57.19"
  sha256 arm:   "93ec8be12424da74d4a53959b6ed5d5bf3a600ad42f14d113f68603b3b347cbd",
         intel: "8d1445d8503868938482a37b4e0bf643dda87fef041187da3f2e04e6fe26f498"

  url "https://github.com/Nimbalyst/nimbalyst/releases/download/v#{version}/Nimbalyst-macOS-#{arch}.dmg",
      verified: "github.com/Nimbalyst/nimbalyst/"
  name "Nimbalyst"
  desc "Visual workspace for building with Codex and Claude Code"
  homepage "https://nimbalyst.com/"

  depends_on macos: ">= :monterey"

  app "Nimbalyst.app"

  zap trash: "~/Library/Application Support/@nimbalyst"
end
