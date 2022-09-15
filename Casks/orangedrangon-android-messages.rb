cask "orangedrangon-android-messages" do
  version "5.4.0"
  sha256 "28ec32ba506211890e14433e1d5738c869e04d105a0b13e05c4bbbc98564b41f"

  url "https://github.com/OrangeDrangon/android-messages-desktop/releases/download/v#{version}/Android-Messages-v#{version}-mac-universal.zip"
  name "Android Messages Desktop"
  desc "Desktop client for Android Messages"
  homepage "https://github.com/OrangeDrangon/android-messages-desktop"

  conflicts_with cask: "android-messages"

  app "Android Messages.app"

  zap trash: "~/Library/Application Support/android-messages-desktop"
end
