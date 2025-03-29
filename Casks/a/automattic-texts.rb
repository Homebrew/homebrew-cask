cask "automattic-texts" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "0.84.11,38355d866e"
    sha256 "5916ebc691950d96237b1421396eb8567dbf67db0f927be8951cb6ce518108de"
  end
  on_intel do
    version "0.84.11,791ab1496c"
    sha256 "74786545cd3b37b17cde3e866a9a4d5047d11d85cb7f9f47e02d0ca00efb3b61"
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
