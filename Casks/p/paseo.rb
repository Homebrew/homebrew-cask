cask "paseo" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.28"
  sha256 arm:   "6d845b59284f67f8f19c1f5b04fb29c7ebfe37c12cf18a22dc5701196f48ed8e",
         intel: "1174842028c451292aea9906d4ea103e8591cfd1ed30adf3df2ea916eb0d62cb"

  url "https://github.com/getpaseo/paseo/releases/download/v#{version}/Paseo_#{version}_#{arch}.dmg",
      verified: "github.com/getpaseo/paseo/"
  name "Paseo"
  desc "Self-hosted daemon for AI coding agents"
  homepage "https://paseo.sh/"

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
