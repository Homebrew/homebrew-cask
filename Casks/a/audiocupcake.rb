cask "audiocupcake" do
  version "1.0.19"
  sha256 "2b2472daf32dbd9512794a93dc6675159d920eb3950694e1588bc167a04b4dd3"

  url "https://audiocupcake.com/wp-content/uploads/2020/02/AudioCupcake-#{version}.dmg"
  name "AudioCupcake"
  desc "Master your audiobook narration and podcasts"
  homepage "https://www.audiocupcake.com/"

  livecheck do
    url "https://audiocupcake.com/wp-content/uploads/2020/02/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: :big_sur

  app "AudioCupcake.app"

  zap trash: [
    "~/Library/Application Support/AudioCupcake",
    "~/Library/Caches/com.sottovoce.AudioCupcake",
    "~/Library/HTTPStorages/com.sottovoce.AudioCupcake",
    "~/Library/HTTPStorages/com.sottovoce.AudioCupcake.binarycookies",
    "~/Library/Preferences/com.sottovoce.AudioCupcake.plist",
    "~/Library/Saved Application State/com.sottovoce.AudioCupcake.savedState",
  ]
end
