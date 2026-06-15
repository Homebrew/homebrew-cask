cask "nimbalyst" do
  arch arm: "arm64", intel: "x64"

  version "0.65.4"
  sha256 arm:   "5201bc620321a90a594f9adbc5e20c19d070d082bcbc6df0786f443f89baf557",
         intel: "6529dd44827baae02bd818b149553a56e7ca9300ecc87f71b05d21629717b9eb"

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
