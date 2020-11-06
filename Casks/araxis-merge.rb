cask "araxis-merge" do
  if MacOS.version <= :yosemite
    version "2017.4884"
    sha256 "abba11a92e1f50d913356d31123bed5bb08838ce39c4659206fd24c32432c4b3"
    url "https://www.araxis.com/download/Merge#{version}-OSX10.10.dmg"
  else
    version "2020.5400"
    sha256 "47152e8c8503345c765fc61c56ffd282095ebb3dc13e59f200748834a7563211"
    url "https://www.araxis.com/download/Merge#{version}-macOS.dmg"
  end

  appcast "https://www.araxis.com/news-feed.atom"
  name "Araxis Merge"
  homepage "https://www.araxis.com/merge/"

  app "Araxis Merge.app"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/araxisgitdiff"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/araxisopendiff"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/araxissvndiff"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/compare", target: "araxiscompare"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/araxisgitmerge"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/araxisp4diff"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/araxissvndiff3"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/compare2", target: "araxiscompare2"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/araxishgmerge"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/araxisp4winmrg"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/araxissvnmerge"

  zap trash: [
    "~/Library/Preferences/com.araxis.merge.LSSharedFileList.plist",
    "~/Library/Preferences/com.araxis.merge.plist",
  ]

  caveats <<~EOS
    For instructions to integrate Araxis Merge with Finder or other applications,
    see https://www.araxis.com/merge/documentation-os-x/installing.en
  EOS
end
