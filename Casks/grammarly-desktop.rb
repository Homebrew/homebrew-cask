cask "grammarly-desktop" do
  version "1.16.0.3"
  sha256 "88abc70955d01b5b576618e4f025912601242984cf26aac60da8bd9d84d948ca"

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
