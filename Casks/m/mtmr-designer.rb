cask "mtmr-designer" do
  version "2026.1,build.16"
  sha256 "20821b01fbe109e8ec34e3fceef8623ca25771d2bbf0dfa6067faeda9d3f6990"

  url "https://github.com/josmanvis/mtmr-designer/releases/download/v#{version.csv.second}/MTMR-2026-#{version.csv.first}.dmg"
  name "MTMR Designer"
  desc "Visual drag-and-drop designer for Touch Bar presets"
  homepage "https://github.com/josmanvis/mtmr-designer"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "MTMR 2026.app"

  zap trash: [
    "~/Library/Application Support/MTMR",
    "~/Library/Caches/com.mtmr-designer.mtmr2026",
    "~/Library/Preferences/com.mtmr-designer.mtmr2026.plist",
  ]
end
