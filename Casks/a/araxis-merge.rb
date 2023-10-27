cask "araxis-merge" do
  on_mojave :or_older do
    version "2021.5602"
    sha256 "06c56e6d08057090f3718b6db560e2a79551f953d4c83c0fad8b60f415c59347"

    livecheck do
      skip "Legacy version"
    end
  end
  on_catalina :or_newer do
    version "2023.5973"
    sha256 "f88a0c7a3eda633d63f73dde015a7a44cf238a9e0de0f9c46ec9cbd176906891"

    livecheck do
      url "https://www.araxis.com/merge/download.en"
      regex(/href=.*?Merge[._-]?v?(\d+(?:\.\d+)+)-macOS\.dmg/i)
    end
  end

  url "https://www.araxis.com/download/Merge#{version}-macOS.dmg"
  name "Araxis Merge"
  desc "Two and three-way file comparison, merging and folder synchronization"
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
  EOS
end
