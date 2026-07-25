cask "nimbalyst" do
  arch arm: "arm64", intel: "x64"

  version "0.70.5"
  sha256 arm:   "875e0a15788d056dd86dbe8becde0eb12dea1a11c1150c85fc559fae52330d5d",
         intel: "9e5d677e0ac565ce51996998ee99514d0ea95674916244b449cf274261216911"

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
