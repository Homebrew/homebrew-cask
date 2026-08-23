cask "nimbalyst" do
  arch arm: "arm64", intel: "x64"

  version "0.74.4"
  sha256 arm:   "b4d1b60d2aaadafb91b6f08086b2356289a3f71b64f0381f9b2ade2768768580",
         intel: "1eeb651d0f271350fde97356f9817202c4e10ddcf7b29be14e328200c43b7cec"

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

  zap trash: [
    "~/Library/Application Support/@nimbalyst",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.nimbalyst.electron.sfl*",
    "~/Library/Preferences/com.nimbalyst.electron.plist",
  ]
end
