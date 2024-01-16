cask "timing" do
  version "2024.1.1"
  sha256 "eb2eda411dd9a2851269314dbc739419fd67770028524ffdfdca730cdba26054"

  url "https://updates.timingapp.com/download/Timing-#{version}.dmg"
  name "Timing"
  name "Timing 2"
  desc "Automatic time and productivity tracking app"
  homepage "https://timingapp.com/"

  # Some items in the Sparkle feed may not have a pubDate, so it's necessary to
  # work with all of the items in the feed (not just the newest one).
  livecheck do
    url "https://updates.timingapp.com/updates/timing2.xml"
    strategy :sparkle do |items|
      items.map(&:short_version)
    end
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Timing.app"

  uninstall login_item: "TimingHelper"

  zap trash: [
    "~/Library/Application Support/info.eurocomp.Timing2",
    "~/Library/Application Support/info.eurocomp.TimingHelper",
    "~/Library/Application Support/info.eurocomp.TimingHelper.InfoExtractorService",
    "~/Library/Caches/info.eurocomp.Timing2",
    "~/Library/Caches/info.eurocomp.TimingHelper.InfoExtractorService",
    "~/Library/Caches/info.eurocomp.TimingHelper",
    "~/Library/Preferences/info.eurocomp.Timing2.plist",
    "~/Library/Preferences/info.eurocomp.TimingHelper.InfoExtractorService.plist",
    "~/Library/Preferences/info.eurocomp.TimingHelper.plist",
  ]
end
