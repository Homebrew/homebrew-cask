cask "automattic-texts" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "0.83.22,9ad3f46e2c"
    sha256 "b240592ae824fc3f3a29d21f929e00f455eb357431d4b9dec4711d5d76140722"
  end
  on_intel do
    version "0.83.22,49f5e1785c"
    sha256 "38ded76ae2d0a321d7d29d71eb6752127c5944d8c17000b34be20aee5563f828"
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
