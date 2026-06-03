cask "nimbalyst" do
  arch arm: "arm64", intel: "x64"

  version "0.61.1"
  sha256 arm:   "d10a14991e5a11066e40e505aba28fab0d5159c355d5a83d3ea0357ea8648df2",
         intel: "8c0823c847819bb2fcf64c1c6609ec716f13ac45786134c14e4d46b86e3cb396"

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
