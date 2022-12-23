cask "mdrp" do
  version "11.0.1"
  sha256 "893aecad8d52ab2a74f1683e308a8d9363eec67dd42e3208a5678f67fa2dd518"

  url "https://www.macdvdripperpro.com/MDRP_v#{version.no_dots}.zip"
  name "Mac DVDRipper Pro"
  desc "Utility to rip and copy DVD content"
  homepage "https://www.macdvdripperpro.com/"

  livecheck do
    url "https://www.macdvdripperpro.com/mdrp_sparkle#{version.major}.xml"
    strategy :page_match do |page|
      match = page.match(/MDRP[._-]v?(\d{2})(\d)(\d)\.zip/i)
      next if match.blank?

      "#{match[1]}.#{match[2]}.#{match[3]}"
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
