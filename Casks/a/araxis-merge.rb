cask "araxis-merge" do
  version "2026.0"
  sha256 "f76e3759b0e5bdd01aa6f67f16f27975b332f147dd84f8583dedc621a8cae124"

  url "https://www.araxis.com/download/Merge#{version}-macOS.dmg"
  name "Araxis Merge"
  desc "Two and three-way file comparison, merging and folder synchronisation"
  homepage "https://www.araxis.com/merge/"

  livecheck do
    url "https://www.araxis.com/merge/download.en"
    regex(/href=.*?Merge[._-]?v?(\d+(?:\.\d+)+)-macOS\.dmg/i)
  end

  depends_on macos: :sonoma

  app "Araxis Merge.app"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/araxishgmerge"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/araxisopendiff"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/araxisp4diff"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/araxisp4winmrg"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/araxissvndiff"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/araxissvndiff3"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/araxissvnmerge"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/compare", target: "araxiscompare"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/compare2", target: "araxiscompare2"

  zap trash: [
    "~/Library/Preferences/com.araxis.merge.LSSharedFileList.plist",
    "~/Library/Preferences/com.araxis.merge.plist",
  ]

  caveats <<~EOS
    For instructions to integrate Araxis Merge with Finder or other applications,
    see https://www.araxis.com/merge/documentation-os-x/installing.en

    Note that integrations that depend on the `compare` tool will require adjustment,
    e.g. for git:
      [mergetool "araxis"]
	    path = "#{HOMEBREW_PREFIX}/bin/araxiscompare"
  EOS
end
