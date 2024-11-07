cask "orangedrangon-android-messages" do
  version "5.5.0"
  sha256 "50dfa270252541e2d73dfce9262574dfd2a6a3288d3a8a158d5f75b3576b615d"

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
