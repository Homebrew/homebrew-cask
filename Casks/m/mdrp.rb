cask "mdrp" do
  version "13.3.0"
  sha256 "2e04985d5f0ebe190822365a5f7a4262deb5ab1d6239bedf9001e047f77956c5"

  url "https://www.macdvdripperpro.com/MDRP_v#{version.csv.first.no_dots}#{"r#{version.csv.second}" if version.csv.second}.zip"
  name "Mac DVDRipper Pro"
  desc "Utility to rip and copy DVD content"
  homepage "https://www.macdvdripperpro.com/"

  livecheck do
    url "https://www.macdvdripperpro.com/mdrp_sparkle.xml"
    regex(/MDRP[._-]v?(\d{2})(\d)(\d)(?:r(\d+))?\.zip/i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      next "#{match[1]}.#{match[2]}.#{match[3]}" unless match[4]

      "#{match[1]}.#{match[2]}.#{match[3]},#{match[4]}"
    end
  end

  depends_on macos: ">= :big_sur"

  app "MDRP.app"

  zap trash: [
    "~/Library/Application Support/MDRP",
    "~/Library/Caches/com.mdrp.MDRP",
    "~/Library/Cookies/com.mdrp.MDRP.binarycookies",
    "~/Library/HTTPStorages/com.mdrp.MDRP.binarycookies",
    "~/Library/Preferences/com.mdrp.MDRP.plist",
  ]
end
