cask "polyphone" do
  version "2.5.0,124"
  sha256 "031ad6ab2dc78841aefd5159d35194ffcf197d4845f3a084f0e0e5bb438d962b"

  url "https://www.polyphone.io/download/0/v#{version.csv.second}/Polyphone-MacOS_12-#{version.csv.first}.dmg",
      user_agent: :browser
  name "Polyphone"
  desc "Soundfont editor for quickly designing musical instruments"
  homepage "https://www.polyphone.io/en"

  livecheck do
    url "https://www.polyphone.io/en/software"
    regex(/Polyphone\s+(\d+(?:\.\d+)+).*download\?file_id=(\d+).*Mac OS \(/im)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :monterey"

  app "polyphone.app"

  zap trash: [
    "~/Library/Preferences/com.polyphone.Polyphone.plist",
    "~/Library/Saved Application State/fr.polyphone.Polyphone.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
