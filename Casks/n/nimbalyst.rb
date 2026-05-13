cask "nimbalyst" do
  arch arm: "arm64", intel: "x64"

  version "0.60.1"
  sha256 arm:   "134281a60b0070439061ca0c5b047559505d1f81a3a91fe3ba8c8f9e8da26050",
         intel: "0b63f0b149c576ab133a2229ea126f9d1d1e4d4ae8f69e6d6eab8371c9c2ab97"

  url "https://github.com/Nimbalyst/nimbalyst/releases/download/v#{version}/Nimbalyst-macOS-#{arch}.dmg",
      verified: "github.com/Nimbalyst/nimbalyst/"
  name "Nimbalyst"
  desc "Visual workspace for building with Codex and Claude Code"
  homepage "https://nimbalyst.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Nimbalyst.app"

  zap trash: "~/Library/Application Support/@nimbalyst"
end
