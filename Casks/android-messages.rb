cask "android-messages" do
  version "3.1.0"
  sha256 "4f1158c390e98c98516d6b34a98b6037dee55d4484f5aca5df75050ca91ece7f"

  url "https://github.com/chrisknepper/android-messages-desktop/releases/download/v#{version}/Android-Messages-#{version}.dmg"
  appcast "https://github.com/chrisknepper/android-messages-desktop/releases.atom"
  name "Android Messages Desktop"
  desc "Desktop client for Android Messages"
  homepage "https://github.com/chrisknepper/android-messages-desktop"

  app "Android Messages.app"

  zap trash: "~/Library/Application Support/Android Messages"
end
