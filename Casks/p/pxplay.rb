cask "pxplay" do
  arch arm: "arm64", intel: "amd64"

  version "3.1.1,8.1.1"
  sha256 arm:   "99528e72d394047b48071b5e09a4154fae0d4785cdd2a09518bab872741f1d5e",
         intel: "2ba15f01d8fe0a7ee992542c0778a30c250420cdeda6da6d2ea547a632ff99a8"

  url "https://github.com/streamingdv/PSPlay-Application-Hosting/releases/download/v#{version.csv.first}_v#{version.csv.second}/PXPlay_#{version.csv.first}_macOSX_#{arch}.dmg"
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

  depends_on macos: :monterey

  app "PXPlay.app"

  zap trash: [
    "~/Library/Application Support/PXPlay",
    "~/Library/Caches/com.streamingdv.pxplay",
    "~/Library/Preferences/com.streamingdv.pxplay.plist",
    "~/Library/Saved Application State/com.streamingdv.pxplay.savedState",
  ]
end
