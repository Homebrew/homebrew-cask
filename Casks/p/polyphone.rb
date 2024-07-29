cask "polyphone" do
  version "2.3.1,84"
  sha256 "46d3abf42f88cc157d7f2d751619d7c599789ebef65b2d31f5873342f1184e9d"

  url "https://www.polyphone.io/download/0/v#{version.csv.second}/polyphone_#{version.csv.first}.dmg"
  name "Polyphone"
  desc "Soundfont editor for quickly designing musical instruments"
  homepage "https://www.polyphone.io/en"

  livecheck do
    url "https://www.polyphone.io/en/software"
    regex(/Polyphone\s+(\d+(?:\.\d+)+).*download&file_id=(\d+).*Mac OS X/im)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "polyphone.app"

  caveats do
    requires_rosetta
  end
end
