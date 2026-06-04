cask "firestorm" do
  version "7.2.4.80712"
  md5 "84a13f44af585ac783d03591118245db"

  url "https://downloads.firestormviewer.org/release/mac/Phoenix-Firestorm-Releasex64_AVX2-#{version.dots_to_hyphens}.dmg"
  name "Phoenix Firestorm viewer for Second Life"
  desc "Viewer for accessing Virtual Worlds"
  homepage "https://www.firestormviewer.org/"

  # The upstream download page links to the latest dmg file but Cloudflare
  # protections prevent us from fetching it, so it must be checked manually:
  # https://www.firestormviewer.org/mac/
  livecheck do
    skip "Cannot be fetched due to Cloudflare protections"
  end

  depends_on macos: :big_sur

  app "Firestorm-Releasex64.app"

  zap trash: [
    "~/Library/Application Support/Firestorm",
    "~/Library/Caches/Firestorm_x64",
    "~/Library/Logs/DiagnosticReports/Firestorm*",
    "~/Library/Preferences/Firestorm.plist",
  ]
end
