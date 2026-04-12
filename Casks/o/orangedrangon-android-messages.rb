cask "orangedrangon-android-messages" do
  version "6.0.0"
  sha256 "ea5b8973bbd5a83c737a433840cf04ee0e18c21b3f206fa6b93a8e64ab1b16bb"

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
