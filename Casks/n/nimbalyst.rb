cask "nimbalyst" do
  arch arm: "arm64", intel: "x64"

  version "0.57.33"
  sha256 arm:   "d175af03bc46ee3a662edfa86c22caa411d12521acc90b59fac4cf75e4147542",
         intel: "5e0fc8c849d9914950a790da3144b63cd0c2cfe3c7e0a861f9e59d576e47b56e"

  url "https://github.com/Nimbalyst/nimbalyst/releases/download/v#{version}/Nimbalyst-macOS-#{arch}.dmg",
      verified: "github.com/Nimbalyst/nimbalyst/"
  name "Nimbalyst"
  desc "Visual workspace for building with Codex and Claude Code"
  homepage "https://nimbalyst.com/"

  depends_on macos: ">= :monterey"

  app "Nimbalyst.app"

  zap trash: "~/Library/Application Support/@nimbalyst"
end
