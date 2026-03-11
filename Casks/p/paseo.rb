cask "paseo" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.25"
  sha256 arm:   "79ff4bbee85a71d48fb0091c902fb5997b8e3ee04932e1771b7e8593303626bf",
         intel: "cf92273080660a49325921e5adbcade05e2efa0b1b1e9eeec5d42fa46d5782ed"

  url "https://github.com/getpaseo/paseo/releases/download/v#{version}/Paseo_#{version}_#{arch}.dmg",
      verified: "github.com/getpaseo/paseo/"
  name "Paseo"
  desc "Self-hosted daemon for AI coding agents"
  homepage "https://paseo.sh/"

  depends_on macos: ">= :ventura"

  app "Paseo.app"

  zap trash: [
    "~/Library/Application Support/dev.paseo.desktop",
    "~/Library/Caches/dev.paseo.desktop",
    "~/Library/Logs/dev.paseo.desktop",
    "~/Library/Preferences/dev.paseo.desktop.plist",
    "~/Library/Saved Application State/dev.paseo.desktop.savedState",
    "~/Library/WebKit/dev.paseo.desktop",
  ]
end
