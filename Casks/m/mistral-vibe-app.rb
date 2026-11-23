cask "mistral-vibe-app" do
  version "1.5.0"
  sha256 "92c9504a14213f382f7c852727d1922f71773dadc936c09cab750a007b4cd19f"

  url "https://storage.googleapis.com/mistralai-ci-desktop-app/vibe-#{version}.dmg"
  name "Mistral Vibe"
  desc "AI chat and coding agent"
  homepage "https://mistral.ai/products/vibe/"

  livecheck do
    url "https://storage.googleapis.com/mistralai-ci-desktop-app/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Vibe.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ai.mistral.lechat.desktop.sfl*",
    "~/Library/Application Support/CrashReporter/Vibecoding.Api_*.plist",
    "~/Library/Preferences/ai.mistral.lechat.desktop.plist",
  ]
end
