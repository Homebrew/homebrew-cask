cask "grammarly-desktop" do
  version "1.177.0.0"
  sha256 "40f9b8468902d8e710bb877f6adedf695333dab34ace7f25b28c774a445f79d9"

  url "https://download-mac.grammarly.com/versions/#{version}/Grammarly.dmg"
  name "Grammarly Desktop"
  desc "Grammarly for desktop"
  homepage "https://www.grammarly.com/desktop"

  livecheck do
    url "https://download-mac.grammarly.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Grammarly Installer.app", target: "Grammarly Desktop.app"

  uninstall launchctl: [
    "com.grammarly.ProjectLlama.LoginHelper",
    "com.grammarly.ProjectLlama.Shepherd",
    "com.grammarly.ProjectLlama.Uninstaller",
  ]

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
