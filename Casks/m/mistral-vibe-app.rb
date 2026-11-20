cask "mistral-vibe-app" do
  version "1.3.0"
  sha256 "1bf26504215989598593494fc3f90d370c5c539f873824e41f377373cbc7cd36"

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
