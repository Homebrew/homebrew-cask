cask "thorium" do
  arch arm: "-arm64"

  version "3.2.2"
  sha256 arm:   "fdec758191cfa645c9d9e37711286d61702bc558e38bdbacef85278add64f62c",
         intel: "ab7efae6affe8acd71a811a5356734319f82d4517ece8ff7c1cca1be4fa9b914"

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

  depends_on macos: ">= :big_sur"

  app "Thorium.app"

  zap trash: [
    "~/Library/Application Support/EDRLab.ThoriumReader",
    "~/Library/Preferences/io.github.edrlab.thorium.plist",
  ]
end
