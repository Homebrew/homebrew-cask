cask "opennavo" do
  version "0.1.3"
  sha256 "2ca7d54e7f9390f650527fc30581676a3602e8ca96b5e19f7151d91608da6ff3"

  url "https://github.com/opennavo/OpenNavo/releases/download/desktop-v#{version}/OpenNavo_#{version}_universal.dmg",
      verified: "github.com/opennavo/OpenNavo/"
  name "OpenNavo"
  desc "Graphical app store for Homebrew packages"
  homepage "https://opennavo.com/"

  livecheck do
    url :url
    strategy :github_latest
    regex(/^desktop-v(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: :ventura

  app "OpenNavo.app"

  zap trash: [
    "~/Library/Application Support/com.opennavo.desktop",
    "~/Library/Caches/com.opennavo.desktop",
    "~/Library/HTTPStorages/com.opennavo.desktop",
    "~/Library/Logs/com.opennavo.desktop",
    "~/Library/Preferences/com.opennavo.desktop.plist",
    "~/Library/Saved Application State/com.opennavo.desktop.savedState",
    "~/Library/WebKit/com.opennavo.desktop",
  ]
end
