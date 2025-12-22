cask "hyperwhisper" do
  version "2.16.1"
  sha256 "5275b4cb33a4dbd6a0f9f4541101489a1a413406ca2889e5e3a36e2cb9c1529d"

  url "https://builds.hyperwhisper.com/hyperwhisper-#{version}.dmg"
  name "HyperWhisper"
  desc "AI-powered speech-to-text transcription"
  homepage "https://hyperwhisper.com/"

  # The Sparkle `shortVersionString` may not include the full version used in
  # the filename (e.g. 2.12 instead of 2.12.0), so we match the version from the
  # file name instead.
  livecheck do
    url "https://hyperwhisper.com/appcast.xml"
    regex(/hyperwhisper[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :sparkle do |item, regex|
      item.url[regex, 1]
    end
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
