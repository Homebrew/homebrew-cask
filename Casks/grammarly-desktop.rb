cask "grammarly-desktop" do
  version "1.8.0.1"
  sha256 "bb1bb95963546b749746bfd735a382af61c08e0c3b11c745b6c20e6aea540014"

  url "https://download-mac.grammarly.com/versions/#{version}/Grammarly.dmg"
  name "Grammarly Desktop"
  desc "Grammarly for desktop"
  homepage "https://www.grammarly.com/desktop"

  livecheck do
    url "https://download-mac.grammarly.com/Grammarly.dmg"
    strategy :extract_plist
  end

  app "Grammarly Installer.app", target: "Grammarly Desktop.app"

  zap trash: [
    "~/Library/Application Support/com.grammarly.ProjectLlama",
    "~/Library/Caches/com.grammarly.ProjectLlama",
    "~/Library/Preferences/com.grammarly.ProjectLlama.plist",
  ]
end
