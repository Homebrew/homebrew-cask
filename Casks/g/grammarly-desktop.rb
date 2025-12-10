cask "grammarly-desktop" do
  version "1.145.0.0"
  sha256 "d70a831a6ff5c333dd8bc130fff40e25b879a44154d7a5b943ffde81ca630270"

  url "https://download-mac.grammarly.com/versions/#{version}/Grammarly.dmg"
  name "Grammarly Desktop"
  desc "Grammarly for desktop"
  homepage "https://www.grammarly.com/desktop"

  livecheck do
    url "https://download-mac.grammarly.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Grammarly Installer.app", target: "Grammarly Desktop.app"

  zap trash: [
    "~/Library/Application Support/com.grammarly.ProjectLlama",
    "~/Library/Caches/com.grammarly.ProjectLlama",
    "~/Library/HTTPStorages/com.grammarly.GRLlamaOnboarding.binarycookies",
    "~/Library/HTTPStorages/com.grammarly.ProjectLlama",
    "~/Library/HTTPStorages/com.grammarly.ProjectLlama.binarycookies",
    "~/Library/LaunchAgents/com.grammarly.ProjectLlama.Shepherd.plist",
    "~/Library/Preferences/com.grammarly.ProjectLlama.plist",
    "~/Library/WebKit/com.grammarly.GRLlamaOnboarding",
    "~/Library/WebKit/com.grammarly.ProjectLlama",
  ]
end
