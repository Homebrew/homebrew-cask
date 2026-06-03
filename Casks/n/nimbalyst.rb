cask "nimbalyst" do
  arch arm: "arm64", intel: "x64"

  version "0.63.9"
  sha256 arm:   "8669457519223beb5aaa8517a917486da20e9b4cf26ee2eac9d14440945b2c8f",
         intel: "e9a4637dc560d7d97cfa9c3f42650f7b0600fdd1ce22c35d7ff2968e3f4a0ffe"

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
