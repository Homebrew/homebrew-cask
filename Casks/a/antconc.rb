cask "antconc" do
  arch arm: "silicon", intel: "intel"

  version "4.3.1"
  sha256 arm:   "2379a52937c02203289e83d6cb73dca9680d0e86251c78c4ed23aaa3d4eaed02",
         intel: "e6be15d1a53d49ab90ae8cbbb9b674257cd26eec2fd0a1dd592f20a0c5f153c4"

  url "https://www.laurenceanthony.net/software/antconc/releases/AntConc#{version.no_dots}/apple-#{arch}/AntConc.dmg"
  name "AntConc"
  desc "Corpus analysis toolkit for concordancing and text analysis"
  homepage "https://www.laurenceanthony.net/software/antconc/"

  livecheck do
    url "https://www.laurenceanthony.net/software/antconc/latest.json"
    strategy :json do |json|
      json["official_releases"]&.filter_map do |item|
        release = item["release"]
        next unless release["type"]&.match?(/MacOS/i)

        release["version"]
      end
    end
  end

  app "AntConc.app"

  zap trash: "~/Library/Preferences/AntConc.plist"
end
