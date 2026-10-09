cask "nimbalyst" do
  arch arm: "arm64", intel: "x64"

  version "0.80.6"
  sha256 arm:   "0a04bb2b890c91c07715a8a30782c30e66de3fe3d2184b9c05045cc8859d22f2",
         intel: "871cffec21c114d3d39123a2108212ff4fbf904cc836bf7f868d57d25ec40cd7"

  url "https://github.com/Nimbalyst/nimbalyst/releases/download/v#{version}/Nimbalyst-macOS-#{arch}.dmg"
  name "Nimbalyst"
  desc "Visual workspace for building with Codex and Claude Code"
  homepage "https://nimbalyst.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Nimbalyst.app"

  zap trash: [
    "~/Library/Application Support/@nimbalyst",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.nimbalyst.electron.sfl*",
    "~/Library/Preferences/com.nimbalyst.electron.plist",
  ]
end
