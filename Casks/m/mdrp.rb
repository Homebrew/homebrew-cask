cask "mdrp" do
  version "15.0.0"
  sha256 "69d4041911316098ffb3be452d9f5e74163a3b2b09db64c98c70471e6fe019b1"

  revision_suffix = "r#{version.csv.second}" if version.csv.second
  url "https://www.macdvdripperpro.com/MDRP_v#{version.csv.first.no_dots}#{revision_suffix}.zip"
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

  depends_on macos: :monterey

  app "MDRP.app"

  zap trash: [
    "~/Library/Application Support/MDRP",
    "~/Library/Caches/com.mdrp.MDRP",
    "~/Library/Cookies/com.mdrp.MDRP.binarycookies",
    "~/Library/HTTPStorages/com.mdrp.MDRP.binarycookies",
    "~/Library/Preferences/com.mdrp.MDRP.plist",
    "~/Library/WebKit/com.mdrp.MDRP",
  ]
end
