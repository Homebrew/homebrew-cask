cask "firestorm" do
  version "7.1.10.75913"
  sha256 "78e96abec46a6ae1f397a9e524a59ac5f7b71e2d69800e148da58897834e8eee"

  url "https://downloads.firestormviewer.org/release/mac/Phoenix-Firestorm-Releasex64-#{version.dots_to_hyphens}.dmg"
  name "Phoenix Firestorm viewer for Second Life"
  desc "Viewer for accessing Virtual Worlds"
  homepage "https://www.firestormviewer.org/"

  livecheck do
    skip "No version information available"
  end

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
