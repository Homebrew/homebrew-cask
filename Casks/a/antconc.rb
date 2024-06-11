cask "antconc" do
  arch arm: "silicon", intel: "intel"

  version "4.3.0"
  sha256 arm:   "7ec3aecd237b51655b9cd0f80ad9cbbaafb0d7b155c01397dd95b9a7a5998a92",
         intel: "deebcf08d9b539809674f8af86a51fc277907e4cfa971b796654bcbc7f0b2642"

  url "https://www.laurenceanthony.net/software/antconc/releases/AntConc#{version.no_dots}/apple-#{arch}/AntConc.dmg"
  name "AntConc"
  desc "Corpus analysis toolkit for concordancing and text analysis"
  homepage "https://www.laurenceanthony.net/software/antconc/"

  livecheck do
    url "https://www.laurenceanthony.net/software/antconc/latest.json"
    strategy :json do |json|
      json["official_releases"]&.filter_map do |item|
        release = item["release"]
        next unless release["type"].match?(/MacOS/i)

        release["version"]
      end
    end
  end

  app "AntConc.app"

  zap trash: "~/Library/Preferences/AntConc.plist"
end
