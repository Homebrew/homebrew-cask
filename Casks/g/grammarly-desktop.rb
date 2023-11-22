cask "grammarly-desktop" do
  version "1.45.1.0"
  sha256 "4a81dc8c4648f888f34a66ec4cf651b1fa4ed29a082e65e5796e5ba2b695177d"

  url "https://download-mac.grammarly.com/versions/#{version}/Grammarly.dmg"
  name "Grammarly Desktop"
  desc "Grammarly for desktop"
  homepage "https://www.grammarly.com/desktop"

  livecheck do
    url "https://download-mac.grammarly.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Grammarly Installer.app", target: "Grammarly Desktop.app"

  zap trash: [
    "~/Library/Application Support/com.grammarly.ProjectLlama",
    "~/Library/Caches/com.grammarly.ProjectLlama",
    "~/Library/Preferences/com.grammarly.ProjectLlama.plist",
  ]
end
