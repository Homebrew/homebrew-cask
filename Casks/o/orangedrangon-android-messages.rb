cask "orangedrangon-android-messages" do
  version "5.4.4"
  sha256 "8ba178a15d1b48a4916263998ce5d8fe48b006f2a2784f601219bb0991d43204"

  url "https://github.com/OrangeDrangon/android-messages-desktop/releases/download/v#{version}/Android-Messages-v#{version}-mac-universal.zip"
  name "Android Messages Desktop"
  desc "Desktop client for Android Messages"
  homepage "https://github.com/OrangeDrangon/android-messages-desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "android-messages"
  depends_on macos: ">= :high_sierra"

  app "Android Messages.app"

  zap trash: "~/Library/Application Support/android-messages-desktop"
end
