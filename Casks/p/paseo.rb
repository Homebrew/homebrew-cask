cask "paseo" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.24"
  sha256 arm:   "0f23928db64c635b40b9fe49a9e16bb8d588bfc8970ea6641409b974bd8b0df2",
         intel: "4c2b13403b8bc6b1ebecca9e74d79b2e76aff963681118bd088d4dd8ab029329"

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
