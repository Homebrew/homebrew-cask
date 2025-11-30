cask "hyperwhisper" do
  version "2.11.0"
  sha256 "5281f94c01d7366e1eee50cb7ef0157a4e97ff5237c8d5d246358115fe94116f"

  url "https://builds.hyperwhisper.com/hyperwhisper-#{version}.dmg"
  name "HyperWhisper"
  desc "AI-powered speech-to-text transcription"
  homepage "https://hyperwhisper.com/"

  livecheck do
    url "https://hyperwhisper.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "HyperWhisper.app"

  zap trash: [
    "~/Library/Application Support/HyperWhisper",
    "~/Library/Caches/com.hyperwhisper.hyperwhisper",
    "~/Library/HTTPStorages/com.hyperwhisper.hyperwhisper",
    "~/Library/Preferences/com.hyperwhisper.hyperwhisper.plist",
    "~/Library/Saved Application State/com.hyperwhisper.hyperwhisper.savedState",
  ]
end
