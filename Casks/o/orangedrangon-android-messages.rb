cask "orangedrangon-android-messages" do
  version "5.7.0"
  sha256 "d2b41d852b7c7e49846077abb8eef404ab45dff3df9439e6f1c87a946c515178"

  url "https://github.com/OrangeDrangon/android-messages-desktop/releases/download/v#{version}/Android-Messages-v#{version}-mac-universal.zip"
  name "Android Messages Desktop"
  desc "Desktop client for Android Messages"
  homepage "https://github.com/OrangeDrangon/android-messages-desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "android-messages"
  depends_on macos: ">= :big_sur"

  app "Android Messages.app"

  zap trash: "~/Library/Application Support/android-messages-desktop"
end
