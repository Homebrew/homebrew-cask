cask "polyphone" do
  version "2.3.1,905"
  sha256 "46d3abf42f88cc157d7f2d751619d7c599789ebef65b2d31f5873342f1184e9d"

  url "https://www.polyphone-soundfonts.com/download/file/#{version.csv.second}-polyphone-#{version.csv.first.dots_to_hyphens}-dmg/latest/download"
  name "Polyphone"
  desc "Soundfont editor for quickly designing musical instruments"
  homepage "https://polyphone-soundfonts.com/"

  livecheck do
    url "https://www.polyphone-soundfonts.com/download"
    strategy :page_match do |page|
      match = page.match(/(\d+)[._-]polyphone[._-]v?(\d+(?:-\d+)+)[._-]dmg/i)
      next if match.blank?

      "#{match[2].tr("-", ".")},#{match[1]}"
    end
  end

  app "polyphone.app"
end
