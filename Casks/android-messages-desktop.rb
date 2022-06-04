cask "orangedrangon-android-messages" do
  version "5.3.4"
  sha256 "691ea0bb054a51f73058c7b65be2146a14f127898d6927198f1ba3cfe0ba280b"

  url "https://github.com/OrangeDrangon/android-messages-desktop/releases/download/v#{version}/Android-Messages-v#{version}-mac-universal.zip"
  name "Android Messages Desktop"
  desc "Desktop client for Android Messages"
  homepage "https://github.com/OrangeDrangon/android-messages-desktop"

  conflicts_with cask: "android-messages"

  app "Android Messages.app"

  zap trash: "~/Library/Application Support/android-messages-desktop"
end
