cask "nimbalyst" do
  arch arm: "arm64", intel: "x64"

  version "0.58.3"
  sha256 arm:   "0e6d7fb7ea7c521664423a3ac24cc8208d2ea077c0390406230f8315c434bff5",
         intel: "50700580226851818f4c3e31c481422e0e49c08de6dcff9f507e9ef4940f5b10"

  url "https://github.com/Nimbalyst/nimbalyst/releases/download/v#{version}/Nimbalyst-macOS-#{arch}.dmg",
      verified: "github.com/Nimbalyst/nimbalyst/"
  name "Nimbalyst"
  desc "Visual workspace for building with Codex and Claude Code"
  homepage "https://nimbalyst.com/"

  depends_on macos: ">= :monterey"

  app "Nimbalyst.app"

  zap trash: "~/Library/Application Support/@nimbalyst"
end
