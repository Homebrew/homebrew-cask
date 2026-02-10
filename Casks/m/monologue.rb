cask "monologue" do
  version "1.0.62"
  sha256 :no_check

  url "https://updates.jottle.ai/Monologue.dmg",
      verified: "updates.jottle.ai/"
  name "Monologue"
  desc "AI voice dictation that adapts to your writing style"
  homepage "https://www.monologue.to/"

  livecheck do
    url "https://updates.jottle.ai/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Monologue.app"

  zap trash: [
    "~/Library/Application Support/com.zeitalabs.jottleai",
    "~/Library/Caches/com.zeitalabs.jottleai",
    "~/Library/Caches/SentryCrash/Monologue",
    "~/Library/Containers/com.zeitalabs.jottleai",
    "~/Library/HTTPStorages/com.zeitalabs.jottleai",
    "~/Library/Preferences/com.zeitalabs.jottleai.plist",
  ]
end
