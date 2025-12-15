cask "scribus" do
  arch arm: "-arm64"

  version "1.6.5"
  sha256 arm:   "d3bdc88fa105e932be1db610689bad17395c05e06b133bfbf372410d5bdf102a",
         intel: "bcf92bd3f96b0c4e5130cd385c159d67ecebdb71baf04658de291fa476ea3159"

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

  depends_on macos: ">= :big_sur"

  app "Scribus.app"

  zap trash: [
    "~/Library/Application Support/Scribus",
    "~/Library/Preferences/Scribus",
    "~/Library/Saved Application State/net.scribus.savedState",
  ]
end
