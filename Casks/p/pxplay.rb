cask "pxplay" do
  arch arm: "arm64", intel: "amd64"

  version "3.1.0,8.1.1"
  sha256 arm:   "19c2ec342a02948cd5ecdd0004b08dd0434dcd73f1c56895c61a2deb220fd2c8",
         intel: "4cf2c5dfe9af9dac35c550920631381f7acaee24dde9870632ee111fd6bfc242"

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
