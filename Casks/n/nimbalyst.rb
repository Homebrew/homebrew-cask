cask "nimbalyst" do
  arch arm: "arm64", intel: "x64"

  version "0.68.1"
  sha256 arm:   "dcb9dea634482a04229b6118ae35bbef23336f7374a9d252e2ba8d788f9f0615",
         intel: "57c344fbb069f3f33bfefd61179f51e704301e0721bb46d43bae8a97df381333"

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
