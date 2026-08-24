cask "paper-design" do
  version "0.5.5,2608248vduqftg0"
  sha256 "e07476fbab53f431b437375e5768db22a388b0e092559d4d582779a73c7dabc5"

  url "https://download.todesktop.com/2601167vjw8xe/Paper%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-arm64.dmg",
      verified: "download.todesktop.com/2601167vjw8xe/"
  name "Paper"
  desc "Design tool for creating interfaces and prototypes"
  homepage "https://paper.design/"

  livecheck do
    url "https://download.todesktop.com/2601167vjw8xe/latest-mac.yml"
    regex(/Paper\s+v?(\d+(?:\.\d+)+)\s+[._-]\s+Build\s+([a-z\d]+)[._-]arm64\.dmg/i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Paper.app"

  uninstall quit: "com.todesktop.2601167vjw8xe"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.todesktop.2601167vjw8xe.sfl*",
    "~/Library/Application Support/Paper",
    "~/Library/Preferences/com.todesktop.2601167vjw8xe.plist",
  ]
end
