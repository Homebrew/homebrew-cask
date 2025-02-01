cask "automattic-texts" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "0.84.7,60867035c3"
    sha256 "1c8f1c84e48e8cf4fefab365471f74d8c257b5adcd8ba8ef4f46aed0fb68cb5c"
  end
  on_intel do
    version "0.84.7,031540da05"
    sha256 "59a18a2325d9162a1a26f0066f61401aeb9218ab518a999c89644304496457a9"
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
