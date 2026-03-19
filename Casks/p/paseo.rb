cask "paseo" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.30"
  sha256 arm:   "8e00aa114442f6cd9cfd40559708773c4991dab20b12bc23c00f6f1b45fc59b5",
         intel: "bd57c4821dc5f7113486b4bb5722958401331adccaa83a681174af9dd36f6e1b"

  url "https://github.com/getpaseo/paseo/releases/download/v#{version}/Paseo_#{version}_#{arch}.dmg",
      verified: "github.com/getpaseo/paseo/"
  name "Paseo"
  desc "Self-hosted daemon for AI coding agents"
  homepage "https://paseo.sh/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :ventura"

  app "Paseo.app"
  binary "#{appdir}/Paseo.app/Contents/MacOS/Paseo", target: "paseo"

  zap trash: [
    "~/Library/Application Support/dev.paseo.desktop",
    "~/Library/Caches/dev.paseo.desktop",
    "~/Library/Logs/dev.paseo.desktop",
    "~/Library/Preferences/dev.paseo.desktop.plist",
    "~/Library/Saved Application State/dev.paseo.desktop.savedState",
    "~/Library/WebKit/dev.paseo.desktop",
  ]
end
