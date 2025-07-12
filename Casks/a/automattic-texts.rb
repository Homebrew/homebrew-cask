cask "automattic-texts" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "0.84.17,1306a54b77"
    sha256 "e472e1af22b5b189a248328476c2ddd334801fe9eaa821df380ad8bb60f6b574"
  end
  on_intel do
    version "0.84.17,a57e9370cb"
    sha256 "dc16d52a430ad1f5f88900af6891f583c328674b8229c04a83aae1dab60f0c1d"
  end

  url "https://texts-binaries.texts.com/builds/Texts-macOS-#{arch}-v#{version.csv.first}-#{version.csv.second}.zip"
  name "Texts.com"
  desc "DM Manager"
  homepage "https://texts.com/"

  livecheck do
    url "https://texts.com/api/update-feed/latest-mac.yml?arch=#{arch}"
    regex(/Texts[._-]macOS[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)[._-](\h+)\.zip/i)
    strategy :electron_builder do |item, regex|
      match = item["path"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :catalina"

  app "Texts.app"

  zap trash: [
    "~/Library/Application Support/Texts",
    "~/Library/Caches/io.texts.Texts",
    "~/Library/HTTPStorages/io.texts.Texts",
    "~/Library/Preferences/com.texts.Texts.plist",
  ]
end
