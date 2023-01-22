cask "grammarly-desktop" do
  version "1.18.1.0"
  sha256 "d14ef4b99e2a3f418b2fe8c6cf256788100ffbc0854db676560b73bed082cb50"

  url "https://download-mac.grammarly.com/versions/#{version}/Grammarly.dmg"
  name "Grammarly Desktop"
  desc "Grammarly for desktop"
  homepage "https://www.grammarly.com/desktop"

  livecheck do
    url "https://download-mac.grammarly.com/Grammarly.dmg"
    strategy :extract_plist
  end

  auto_updates true

  app "Grammarly Installer.app", target: "Grammarly Desktop.app"

  zap trash: [
    "~/Library/Application Support/com.grammarly.ProjectLlama",
    "~/Library/Caches/com.grammarly.ProjectLlama",
    "~/Library/Preferences/com.grammarly.ProjectLlama.plist",
  ]
end
