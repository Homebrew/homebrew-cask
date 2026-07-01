cask "nimbalyst" do
  arch arm: "arm64", intel: "x64"

  version "0.66.7"
  sha256 arm:   "2b91aba12bcc83e5679d074bc0f7f2aed4ab3f8a8a35ea87e8524a617113b877",
         intel: "5c499adfd8e22d3f0e5a1efc54373b26278eac7d57d9293cd632469f217ee0b8"

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
