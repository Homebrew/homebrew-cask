cask "orangedrangon-android-messages" do
  version "5.4.1"
  sha256 "5c29c23d5c1b618dead782babd14c5780d03c5f354903e35500e9f6586cae92b"

  url "https://github.com/OrangeDrangon/android-messages-desktop/releases/download/v#{version}/Android-Messages-v#{version}-mac-universal.zip"
  name "Android Messages Desktop"
  desc "Desktop client for Android Messages"
  homepage "https://github.com/OrangeDrangon/android-messages-desktop"

  conflicts_with cask: "android-messages"

  app "Android Messages.app"

  zap trash: "~/Library/Application Support/android-messages-desktop"
end
