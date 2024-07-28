cask "firestorm" do
  version "7.1.9.74745"
  sha256 "d888c9c2b9170ece9060fc500b70d3008609f43b72e50709d86c66e22cdf3432"

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
