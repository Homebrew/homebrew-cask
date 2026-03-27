cask "nimbalyst" do
  arch arm: "arm64", intel: "x64"

  version "0.56.17"
  sha256 arm:   "38f640d612bb26c9a53aaf3fd911084949344b67cfc65e1515c1009081093a64",
         intel: "91b26066c2b3ba0fddff75a1fa748e25ded8127c33058a0d9f91610957906104"

  url "https://github.com/Nimbalyst/nimbalyst/releases/download/v#{version}/Nimbalyst-macOS-#{arch}.dmg",
      verified: "github.com/Nimbalyst/nimbalyst/"
  name "Nimbalyst"
  desc "Visual workspace for building with Codex and Claude Code"
  homepage "https://nimbalyst.com/"

  depends_on macos: ">= :big_sur"

  app "Nimbalyst.app"

  zap trash: "~/Library/Application Support/@nimbalyst"
end
