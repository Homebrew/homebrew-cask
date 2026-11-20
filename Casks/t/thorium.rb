cask "thorium" do
  arch arm:   "-arm64",
       intel: "-x64"

  version "3.5.1"
  sha256 arm:   "23b7d9ab62eaae7a7ef67cbbef579a655c556dce5877278be8c28e96d1fca3a5",
         intel: "23c9270fefbd943dc9401033224b43c6b3f3511cf68ba154d63215cab13b2732"

  url "https://github.com/edrlab/thorium-reader/releases/download/v#{version.csv.first}/Thorium-#{version.csv.second || version.csv.first}#{arch}.dmg"
  name "Thorium Reader"
  desc "Epub reader"
  homepage "https://www.edrlab.org/software/thorium-reader/"

  livecheck do
    url "https://www.thoriumreader.com/en/download/"
    regex(%r{/v?(\d+(?:\.\d+)+)/Thorium[._-]v?(\d+(?:[.-]\d+)+)#{arch}\.dmg}i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next unless match

      (match[2] == match[1]) ? match[1] : "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: :monterey

  app "Thorium.app"

  zap trash: [
    "~/Library/Application Support/EDRLab.ThoriumReader",
    "~/Library/Preferences/io.github.edrlab.thorium.plist",
  ]
end
