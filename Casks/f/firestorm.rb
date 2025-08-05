cask "firestorm" do
  version "7.1.13.78266"
  sha256 "68b48b0e0c425c078a2afb30dcdb0dd4fe76ccf34a52ce1b80b68a43387e00c3"

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

  depends_on macos: ">= :catalina"

  app "Firestorm-Releasex64.app"

  zap trash: [
    "~/Library/Application Support/Firestorm",
    "~/Library/Caches/Firestorm_x64",
    "~/Library/Logs/DiagnosticReports/Firestorm*",
    "~/Library/Preferences/Firestorm.plist",
  ]

  caveats do
    requires_rosetta
  end
end
