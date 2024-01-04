cask "mac-recorder" do
  version "1.0.0"
  sha256 "3dd7f21af1ed5eab973cba5dc501db93c7c76ddedd70544271a70adc7d8c6087"

  url "https://github.com/TheOneStudioLLC/Mac-Recorder/releases/download/#{version}/mac-recorder.dmg",
      verified: "github.com/TheOneStudioLLC/Mac-Recorder/"
  name "Mac Recorder"
  desc "Ultimate Recording Solution for MacОS"
  homepage "https://macutilities.org/recorder"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Mac Recorder.app"

  zap trash: [
    "~/Library/Application Support/MacRecorder",
    "~/Library/Logs/MacRecorder",
    "~/Library/Preferences/MacRecorder.plist",
    "~/Library/Saved Application State/MacRecorder.savedState",
  ]
end
