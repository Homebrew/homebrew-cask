cask "cpod" do
  version "1.28.0"
  sha256 "bd43627be0daad296f27d22735ec013b14d182d2cc2a9c2db61d2db8a6584577"

  url "https://github.com/z-------------/CPod/releases/download/v1.28.0/CPod-#{version}-mac.zip"
  name "CPod"
  desc "Simple, beautiful podcast app"
  homepage "https://github.com/z-------------/CPod"

  app "CPod.app"

  zap trash: [
    "~/Library/Application Scripts/com.apple.podcasts.MacPodcastsStorageExtension",
    "~/Library/Containers/com.apple.podcasts.MacPodcastsStorageExtension",
  ]
end
