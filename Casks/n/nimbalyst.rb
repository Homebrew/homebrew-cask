cask "nimbalyst" do
  arch arm: "arm64", intel: "x64"

  version "0.59.2"
  sha256 arm:   "26c51ec3de7b73b1244a6398d5179832674c52d7c3e554f0cc45a6773c331b4d",
         intel: "494d7f205b0e99cacc0f980c1ce429521aa085c96ce9f0e0170535b25f035645"

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
