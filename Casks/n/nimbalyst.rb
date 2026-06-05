cask "nimbalyst" do
  arch arm: "arm64", intel: "x64"

  version "0.64.4"
  sha256 arm:   "6ba8c7df3c9eea30b41560536d770a581a5a4b49566c8bdaa472873b848641ab",
         intel: "e870adf540d2f6ba5576fd83617a8e45ebda5c5e7ad3c53d4ca4f7f15a0d02a6"

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
