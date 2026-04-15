cask "scribus" do
  arch arm: "-arm64"

  version "1.6.6"
  sha256 arm:   "0666a15e843575dea51233f874f2a840c73dc1cc5cbdf676fcff2e8978a71815",
         intel: "69cc1b918747882395d984f0d0a3c06e965d06368299952e645b31925e284a99"

  on_arm do
    depends_on macos: ">= :big_sur"
  end
  on_intel do
    depends_on macos: ">= :monterey"
  end

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
