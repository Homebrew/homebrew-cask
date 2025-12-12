cask "hyperwhisper" do
  version "2.15.1"
  sha256 "9de84aa8be93c57d7c2da5f1aeab1ca2f68a13209b272d064ea42c04a31a2fe8"

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
