cask "automattic-texts" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "0.83.23,0fa306a3cc"
    sha256 "04d48341d259c88c6b66eeeb2dac3a3d75527babcf621c28ac1de378cbc31e34"
  end
  on_intel do
    version "0.83.23,46e69ba363"
    sha256 "37e204ddc6b7c3e31f9c0f092e559c6bd85550445a457313cbbced0a89ffa388"
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
