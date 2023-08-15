cask "firestorm" do
  version "6.6.14.69596"
  sha256 "b514a953364651c3aa9162d9c51127a64bfc163bde6d88b9f1dbd7f17132d1fe"

  url "https://downloads.firestormviewer.org/mac/Phoenix-Firestorm-Releasex64-#{version.dots_to_hyphens}.dmg"
  name "Phoenix Firestorm viewer for Second Life"
  desc "Viewer for accessing Virtual Worlds"
  homepage "https://www.firestormviewer.org/"

  livecheck do
    url "https://www.firestormviewer.org/mac/"
    strategy :page_match do |page|
      v = page[%r{href=.*?/Phoenix-Firestorm-Releasex64-(\d+(?:-\d+)*)\.dmg}i, 1]
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
