cask "orangedrangon-android-messages" do
  version "5.7.1"
  sha256 "7680578ba10c6d254c43180eee3d2f0c1302a8ec4553d46d692ad265098d2c6d"

  url "https://github.com/OrangeDrangon/android-messages-desktop/releases/download/v#{version}/Android-Messages-v#{version}-mac-universal.zip"
  name "Android Messages Desktop"
  desc "Desktop client for Android Messages"
  homepage "https://github.com/OrangeDrangon/android-messages-desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

  app "Android Messages.app"

  zap trash: "~/Library/Application Support/android-messages-desktop"
end
