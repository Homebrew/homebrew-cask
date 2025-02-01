cask "automattic-texts" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "0.84.9,4a60597d50"
    sha256 "adbb13c4c8929f61338219a4f59fe13037950f35b5d9e08304dec322e46f0825"
  end
  on_intel do
    version "0.84.9,8f0995397f"
    sha256 "91947c254df45b89dd0bdd63b3df1c9c6084bdcf9ac6fcc4badc9d78c0aa3139"
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
