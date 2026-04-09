cask "thorium" do
  arch arm: "-arm64"

  version "3.4.0"
  sha256 arm:   "2f19dcaf4b717330626ebce7148653da399945467699bef7f0843d7b5f512030",
         intel: "ef1e798792e0b2fc76348e2376453ce21cb7bb8607e8b8dff6d3c2298d69c239"

  url "https://github.com/edrlab/thorium-reader/releases/download/v#{version.csv.first}/Thorium-#{version.csv.second || version.csv.first}#{arch}.dmg",
      verified: "github.com/edrlab/thorium-reader/"
  name "Thorium Reader"
  desc "Epub reader"
  homepage "https://www.edrlab.org/software/thorium-reader/"

  livecheck do
    url "https://thorium.edrlab.org/en/"
    regex(%r{/v?(\d+(?:\.\d+)+)/Thorium[._-]v?(\d+(?:[.-]\d+)+)#{arch}\.dmg}i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next unless match

      (match[2] == match[1]) ? match[1] : "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :monterey"

  app "Thorium.app"

  zap trash: [
    "~/Library/Application Support/EDRLab.ThoriumReader",
    "~/Library/Preferences/io.github.edrlab.thorium.plist",
  ]
end
