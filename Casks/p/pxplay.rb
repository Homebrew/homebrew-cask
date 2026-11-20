cask "pxplay" do
  arch arm: "arm64", intel: "amd64"

  version "3.2.0,9.0.0"
  sha256 arm:   "fba85f4e7e4a2993a21a848c123916e58bb0c3d5c5060db4d2f2e4550b40c080",
         intel: "4c5e1caeb83de5ea95f79bfbe91b67807254253169452e4103a34bb3a203791f"

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
