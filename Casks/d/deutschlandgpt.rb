cask "deutschlandgpt" do
  version "0.16.0"
  sha256 "9382c2e41a44060a280ac64e11e4e30618eaf734b74e13c0e8030d5195662429"

  url "https://dgpt-assets-prod.nbg1.your-objectstorage.com/releases/desktop/macos/deutschlandgpt-desktop-macos-v#{version}.dmg"
  name "DeutschlandGPT"
  desc "Desktop client for the DeutschlandGPT AI assistant"
  homepage "https://www.deutschlandgpt.de/"

  livecheck do
    url "https://www.deutschlandgpt.de/api/desktop/update/darwin/aarch64/0.0.0"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "DeutschlandGPT.app"

  zap trash: [
    "~/.deutschlandgpt",
    "~/Library/Application Support/de.deutschlandgpt.desktop",
    "~/Library/Caches/de.deutschlandgpt.desktop",
    "~/Library/Logs/de.deutschlandgpt.desktop",
    "~/Library/Preferences/de.deutschlandgpt.desktop.plist",
    "~/Library/WebKit/de.deutschlandgpt.desktop",
  ]
end
