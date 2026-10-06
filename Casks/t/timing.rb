cask "timing" do
  version "2026.5.1"
  sha256 "dce7d8fd713817f03961ef0d771ef81ecb1c2dbd1e2af6c9deca23ca13672380"

  url "https://updates.timingapp.com/download/Timing-#{version}.dmg"
  name "Timing"
  name "Timing 2"
  desc "Automatic time and productivity tracking app"
  homepage "https://timingapp.com/"

  # Some items in the Sparkle feed may not have a pubDate, so it's necessary to
  # work with all of the items in the feed (not just the newest one).
  livecheck do
    url "https://updates.timingapp.com/updates/timing2.xml"
    regex(/Timing[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :sparkle do |items, regex|
      items.map { |item| item.url[regex, 1] }
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Timing.app"

  uninstall quit: "info.eurocomp.TimingHelper"
  uninstall login_item: "TimingHelper"

  zap trash: [
    "~/Library/Application Support/info.eurocomp.Timing2",
    "~/Library/Application Support/info.eurocomp.TimingHelper",
    "~/Library/Application Support/info.eurocomp.TimingHelper.InfoExtractorService",
    "~/Library/Caches/info.eurocomp.Timing2",
    "~/Library/Caches/info.eurocomp.TimingHelper",
    "~/Library/Caches/info.eurocomp.TimingHelper.InfoExtractorService",
    "~/Library/Preferences/info.eurocomp.Timing2.plist",
    "~/Library/Preferences/info.eurocomp.TimingHelper.InfoExtractorService.plist",
    "~/Library/Preferences/info.eurocomp.TimingHelper.plist",
  ]
end
