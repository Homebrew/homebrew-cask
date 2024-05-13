cask "automattic-texts" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "0.83.13,0224d52974"
    sha256 "d9ccfeb5e0c97ef513f0b58380bed7ec80db9fb82fa75146537b1e6359165803"
  end
  on_intel do
    version "0.83.13,9eec85aaa2"
    sha256 "52cd8100a6c6c2db50398eb3b634de57da7f6007c2ee3ac125c8a022064d82c7"
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
