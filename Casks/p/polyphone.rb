cask "polyphone" do
  version "2.4,95"
  sha256 "d2791bba43fdefdc8c3c7fce5bf11d6ff9eb267495f78315931e9ac2251d082f"

  url "https://www.polyphone.io/download/0/v#{version.csv.second}/Polyphone-macOS_11-15.dmg",
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

  app "polyphone.app"

  zap trash: [
    "~/Library/Preferences/com.polyphone.Polyphone.plist",
    "~/Library/Saved Application State/fr.polyphone.Polyphone.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
