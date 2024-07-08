cask "antconc" do
  arch arm: "silicon", intel: "intel"

  version "4.2.4"
  sha256 arm:   "e4c5af39f158c084d5aacba3a28cd0509dd23b4e1ac1600cb2992c5fea27a368",
         intel: "3408f1024fae9c0c4fe41d5d1a3cf53ef9b26ec676c1828a91d9784ae0994417"

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
