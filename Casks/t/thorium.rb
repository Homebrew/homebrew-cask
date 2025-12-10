cask "thorium" do
  arch arm: "-arm64"

  version "3.3.0"
  sha256 arm:   "b19fe0b336f360137403c6050a6ba7288668fc2d0b7d0428bbac958689b21325",
         intel: "aa7944f8c3a423982e1a25beb753b6982a08ac65b9c6671fb0bdd88350d8bb31"

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
