cask "nimbalyst" do
  arch arm: "arm64", intel: "x64"

  version "0.67.3"
  sha256 arm:   "e7c49c77f3d257977b0ff7cc231b5a13df2badb38a07ccba1f203296fefa9f53",
         intel: "dcb40328f2c77929909f2dfffeb5e19776c917fea50cf9871b9977369d9afb2a"

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
