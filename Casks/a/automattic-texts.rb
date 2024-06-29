cask "automattic-texts" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "0.83.21,d3340bd6d2"
    sha256 "bd537855e17d51fa6a25db783df9c9f36062203bd5705087a49592ee78529e3e"
  end
  on_intel do
    version "0.83.21,48b6770142"
    sha256 "1148f0c5f9cbe37cb59718046b0cee81acd896e5bff4a1c1cdbb62137d3a7966"
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
