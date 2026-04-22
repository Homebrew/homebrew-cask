cask "nimbalyst" do
  arch arm: "arm64", intel: "x64"

  version "0.57.42"
  sha256 arm:   "555672a49a8e4a11499b71172d0ac243388b1cd32ab070ce83e36b3b5550f562",
         intel: "bcdccf79699f9b1574403b50302affb63c70660998de744a3f6ee47bcfef9891"

  url "https://github.com/Nimbalyst/nimbalyst/releases/download/v#{version}/Nimbalyst-macOS-#{arch}.dmg",
      verified: "github.com/Nimbalyst/nimbalyst/"
  name "Nimbalyst"
  desc "Visual workspace for building with Codex and Claude Code"
  homepage "https://nimbalyst.com/"

  depends_on macos: ">= :monterey"

  app "Nimbalyst.app"

  zap trash: "~/Library/Application Support/@nimbalyst"
end
