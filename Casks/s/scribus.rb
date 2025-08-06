cask "scribus" do
  arch arm: "-arm64"

  version "1.6.4"
  sha256 arm:   "676e7bb8df89e49150dc4fb733f6515e0b53fd064bc4b4cfb94519d39c76b324",
         intel: "fd5dfdfbcfd333f8079ecf6f92ea2784fd687401b6bd07055bb60a20f25ee19a"

  url "https://downloads.sourceforge.net/scribus/scribus/#{version.csv.first}/scribus-#{version.csv.second || version.csv.first}#{arch}.dmg",
      verified: "sourceforge.net/scribus/"
  name "Scribus"
  desc "Free and open-source page layout program"
  homepage "https://www.scribus.net/"

  livecheck do
    url "https://sourceforge.net/projects/scribus/rss?path=/scribus"
    regex(%r{url=.*?/v?(\d+(?:\.\d+)+)/scribus[._-]v?(\d+(?:[._]\d+)+)(?:#{arch})?\.(?:dmg|pkg)}i)
    strategy :sourceforge do |page, regex|
      match = page.match(regex)
      next if match.blank?

      next match[1] if match[1] == match[2]

      "#{match[1]},#{match[2]}"
    end
  end

  app "Scribus.app"

  zap trash: [
    "~/Library/Application Support/Scribus",
    "~/Library/Preferences/Scribus",
    "~/Library/Saved Application State/net.scribus.savedState",
  ]
end
