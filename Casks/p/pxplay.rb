cask "pxplay" do
  arch arm: "arm64", intel: "amd64"

  version "2.0.0,7.1.0"
  sha256 arm:   "eecdf35a9508fe07e6994dc253cead5b7734f26f5e91408d6bbf3d48a48e88da",
         intel: "781c139f4b4f2ba5af4483ccc35a0b20114334333010eb3cf6a6e4bb058794ce"

  url "https://github.com/streamingdv/PSPlay-Application-Hosting/releases/download/v#{version.csv.first}_v#{version.csv.second}/PXPlay_#{version.csv.first}_macOSX_#{arch}.dmg",
      verified: "github.com/streamingdv/PSPlay-Application-Hosting/"
  name "PXPlay"
  desc "Third-party Remote Play client for PlayStation consoles"
  homepage "https://streamingdv.github.io/pxplay/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :git do |tags, regex|
      tags.filter_map do |tag|
        match = tag.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  depends_on macos: ">= :monterey"

  app "PXPlay.app"

  zap trash: [
    "~/Library/Application Support/PXPlay",
    "~/Library/Caches/com.streamingdv.pxplay",
    "~/Library/Preferences/com.streamingdv.pxplay.plist",
    "~/Library/Saved Application State/com.streamingdv.pxplay.savedState",
  ]
end
