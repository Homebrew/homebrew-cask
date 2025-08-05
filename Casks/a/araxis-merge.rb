cask "araxis-merge" do
  on_big_sur :or_older do
    on_mojave :or_older do
      version "2021.5602"
      sha256 "06c56e6d08057090f3718b6db560e2a79551f953d4c83c0fad8b60f415c59347"
    end
    on_catalina do
      version "2022.5786"
      sha256 "a8a65089d7965a3ecdf3b65dbeaed54f4f31d0bc7b85c9d970aa999ab5cfa4df"
    end
    on_big_sur do
      version "2023.5915"
      sha256 "8e9372f56a3597bdea49caadab1f11e998d8686c5e2d19472ec9470db643032e"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "2025.0"
    sha256 "ee5acb1b7fdce128b2c267b9b9cc3318f324b1dc63685163135b7d4e523d8810"

    livecheck do
      url "https://www.araxis.com/merge/download.en"
      regex(/href=.*?Merge[._-]?v?(\d+(?:\.\d+)+)-macOS\.dmg/i)
    end
  end

  url "https://www.araxis.com/download/Merge#{version}-macOS.dmg"
  name "Araxis Merge"
  desc "Two and three-way file comparison, merging and folder synchronisation"
  homepage "https://www.araxis.com/merge/"

  depends_on macos: ">= :mojave"

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
