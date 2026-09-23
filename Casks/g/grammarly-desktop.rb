cask "grammarly-desktop" do
  version "1.195.0.0"
  sha256 "5ebf831edc0cdc0c05f624488be523430febd2de6122e98026ff99884df3ca32"

  url "https://download-mac.grammarly.com/versions/#{version}/Grammarly.dmg"
  name "Grammarly Desktop"
  desc "Grammarly for desktop"
  homepage "https://www.grammarly.com/desktop"

  livecheck do
    url "https://download-mac.grammarly.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

  app "Grammarly Installer.app", target: "Grammarly Desktop.app"

  uninstall launchctl: [
    "com.grammarly.ProjectLlama.LoginHelper",
    "com.grammarly.ProjectLlama.Shepherd",
    "com.grammarly.ProjectLlama.Uninstaller",
  ]

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.grammarly.projectllama.loginhelper.sfl*",
    "~/Library/Application Support/com.grammarly.ProjectLlama",
    "~/Library/Caches/com.grammarly.ProjectLlama",
    "~/Library/HTTPStorages/com.grammarly.GRLlamaOnboarding.binarycookies",
    "~/Library/HTTPStorages/com.grammarly.ProjectLlama",
    "~/Library/HTTPStorages/com.grammarly.ProjectLlama.binarycookies",
    "~/Library/LaunchAgents/com.grammarly.ProjectLlama.Shepherd.plist",
    "~/Library/LaunchAgents/com.grammarly.ProjectLlama.Uninstaller.plist",
    "~/Library/Preferences/com.grammarly.ProjectLlama.plist",
    "~/Library/WebKit/com.grammarly.GRLlamaOnboarding",
    "~/Library/WebKit/com.grammarly.ProjectLlama",
  ]
end
