cask "deutschlandgpt" do
  version "0.16.10"
  sha256 "0f8b3d1ec68e91a0719e5473d50a89eb65f36e5cab5c3efca4cf6381e91d6e42"

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
