cask "mdrp" do
  version "12.1.1,1"
  sha256 "6af30bce0bccbc3aa86e5a5c37e1fefe36a365f48c81151ade7f2353d5c254e0"

  url "https://www.macdvdripperpro.com/MDRP_v#{version.csv.first.no_dots}#{"r#{version.csv.second}" || ""}.zip"
  name "Mac DVDRipper Pro"
  desc "Utility to rip and copy DVD content"
  homepage "https://www.macdvdripperpro.com/"

  livecheck do
    url "https://www.macdvdripperpro.com/mdrp_sparkle.xml"
    strategy :page_match do |page|
      match = page.match(/MDRP[._-]v?(\d{2})(\d)(\d)(?:r(\d+))?\.zip/i)
      next if match.blank?

      return "#{match[1]}.#{match[2]}.#{match[3]}" unless match[4]

      "#{match[1]}.#{match[2]}.#{match[3]},#{match[4]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  app "MDRP.app"

  zap trash: [
    "~/Library/Application Support/MDRP",
    "~/Library/Caches/com.mdrp.MDRP",
    "~/Library/Cookies/com.mdrp.MDRP.binarycookies",
    "~/Library/HTTPStorages/com.mdrp.MDRP.binarycookies",
    "~/Library/Preferences/com.mdrp.MDRP.plist",
  ]
end
