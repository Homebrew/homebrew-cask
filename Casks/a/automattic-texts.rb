cask "automattic-texts" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "0.84.12,2ac227fade"
    sha256 "96361e5e4a8e1dacf22e7871dd1973c98743f8dae9b9e00a058a506d902baf5f"
  end
  on_intel do
    version "0.84.12,98e2daa8f3"
    sha256 "22c461b2404867324fefaa931cbd81c809031884e96ed1df472b36a6564b2b07"
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
