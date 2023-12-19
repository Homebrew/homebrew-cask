cask "firestorm" do
  version "6.6.17.70368"
  sha256 "2969e1470bde384c612cdee0e679f583d474e27b2942dd41243d515052e1d3aa"

  url "https://downloads.firestormviewer.org/release/mac/Phoenix-Firestorm-Releasex64-#{version.dots_to_hyphens}.dmg"
  name "Phoenix Firestorm viewer for Second Life"
  desc "Viewer for accessing Virtual Worlds"
  homepage "https://www.firestormviewer.org/"

  livecheck do
    url "https://www.firestormviewer.org/mac/"
    strategy :page_match do |page|
      v = page[%r{href=.*?/Phoenix-Firestorm-Releasex64-(\d+(?:-\d+)*)\.dmg}i, 1]
      next if v.blank?

      v.tr("-", ".")
    end
  end

  app "Firestorm-Releasex64.app"

  zap trash: [
    "~/Library/Application Support/Firestorm",
    "~/Library/Caches/Firestorm_x64",
    "~/Library/Logs/DiagnosticReports/Firestorm*",
    "~/Library/Preferences/Firestorm.plist",
  ]

  caveats <<~EOS
    This version does not contain the Havok engine (does not matter if
    you are not a content creator).

    Most problems that crop up during updates can be resolved or fixed by
    performing a clean install. For instructions, see:

      https://wiki.phoenixviewer.com/doku.php?id=fs_clean_reinstall
  EOS
end
