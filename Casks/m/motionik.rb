cask "motionik" do
  arch arm: "arm64", intel: "x64"

  version "1.10.6"
  sha256 arm:   "2241b0342c7f8c79c043d9f7c5899fd8b543187b7018bc5c3ec54f3168556f2f",
         intel: "1ff801ce74840428c270a58d1524d86b79d89861dca998cbecdd872c5b417722"

  url "https://assets.motionik.com/releases/Motionik-#{version}-#{arch}.dmg"
  name "Motionik"
  desc "Screen recording software"
  homepage "https://motionik.com/"

  livecheck do
    url "https://assets.motionik.com/releases/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :monterey"

  app "Motionik.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.motionik.screenrecorder.sfl*",
        "~/Library/Application Support/motionik",
        "~/Library/Logs/motionik",
        "~/Library/Preferences/com.motionik.screenrecorder.plist",
      ],
      rmdir: "~/Motionik-Recordings"
end
