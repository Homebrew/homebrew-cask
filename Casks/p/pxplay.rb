cask "pxplay" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.0,6.8.0"
  sha256 arm:   "6358c6f0615859456530d15806d61a4c2f59f658b1c18f9817a96b2706bc720d",
         intel: "28e4e25880d7adc5e19a4919817bc520c0c45f43fc3c61529432c6ec01192987"

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
