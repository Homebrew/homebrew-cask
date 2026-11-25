cask "deutschlandgpt" do
  version "0.16.12"
  sha256 "063a5ba08c2e981c3fdba8e94b67dc22617d30f4eaa1c3ec1ebd71bf196e996a"

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
        "~/Library/Application Support/de.deutschlandgpt.desktop",
        "~/Library/Caches/de.deutschlandgpt.desktop",
        "~/Library/Logs/de.deutschlandgpt.desktop",
        "~/Library/Preferences/de.deutschlandgpt.desktop.plist",
        "~/Library/WebKit/de.deutschlandgpt.desktop",
      ],
      rmdir: "~/.deutschlandgpt"
end
