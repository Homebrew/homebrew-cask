cask "paseo" do
  version "0.1.18"
  sha256 "acded7f3eaf3f99c94332ef96e15beabe11d7dce2c018cb87c7bbde7f1c49075"

  url "https://github.com/getpaseo/paseo/releases/download/v#{version}/Paseo_#{version}_universal.dmg",
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
