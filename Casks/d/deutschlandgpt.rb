cask "deutschlandgpt" do
  version "0.16.2"
  sha256 "36814d43355a82e80e6bcc54177720833c509a712395a8034b42b4d965a339c3"

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
