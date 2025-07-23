cask "grammarly-desktop" do
  version "1.128.1.0"
  sha256 "be373942df87e6babd56d9b34c90b5e8104d9e7f50369c7c697d66646f93fbae"

  url "https://download-mac.grammarly.com/versions/#{version}/Grammarly.dmg"
  name "Grammarly Desktop"
  desc "Grammarly for desktop"
  homepage "https://www.grammarly.com/desktop"

  livecheck do
    url "https://download-mac.grammarly.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Grammarly Installer.app", target: "Grammarly Desktop.app"

  zap trash: [
    "~/Library/Application Support/com.grammarly.ProjectLlama",
    "~/Library/Caches/com.grammarly.ProjectLlama",
    "~/Library/Preferences/com.grammarly.ProjectLlama.plist",
  ]
end
