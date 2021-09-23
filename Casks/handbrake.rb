cask "handbrake" do
  version "1.4.1"
  sha256 "b8371ee8a2b92427719dd5fa4bd43255efc80e9cfd96f8197e444e7c6ed85adc"

  url "https://github.com/HandBrake/HandBrake/releases/download/#{version}/HandBrake-#{version}.dmg",
      verified: "github.com/HandBrake/HandBrake/"
  name "HandBrake"
  desc "Open-source video transcoder"
  homepage "https://handbrake.fr/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "HandBrake.app"

  zap trash: [
    "~/Library/Application Support/HandBrake",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/fr.handbrake.handbrake.sfl*",
    "~/Library/Caches/fr.handbrake.HandBrake",
    "~/Library/Preferences/fr.handbrake.HandBrake.plist",
    "~/Library/Saved Application State/fr.handbrake.HandBrake.savedState",
  ]
end
