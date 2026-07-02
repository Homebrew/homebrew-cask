cask "nimbalyst" do
  arch arm: "arm64", intel: "x64"

  version "0.66.9"
  sha256 arm:   "d21f4a5b1f635a9972dfca5be432199e5716acae1671087878d2a69bbebd9fbe",
         intel: "ca88dd41b723af10512136a001d8a4c2ce991071c4eabde56316d7e398ffb75d"

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
