cask "automattic-texts" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "0.83.15,868b36e5c6"
    sha256 "cab87b203ae741314021b4415cf94e05381d3cb1c1f63150a2429cb6bcddbb27"
  end
  on_intel do
    version "0.83.15,d5ed5f3147"
    sha256 "2ea42f06c0246edfaaaf1c414566e64406b79eab8dde3d79fcaca5f9934f85a7"
  end

  url "https://texts-binaries.texts.com/builds/Texts-macOS-#{arch}-v#{version.csv.first}-#{version.csv.second}.zip"
  name "Texts.com"
  desc "DM Manager"
  homepage "https://texts.com/"

  livecheck do
    url "https://texts.com/api/install/macos/#{arch}/latest.zip"
    regex(/Texts[._-]macOS[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)[._-](\h+)\.zip/i)
    strategy :header_match do |headers, regex|
      match = headers["location"].match(regex)
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
