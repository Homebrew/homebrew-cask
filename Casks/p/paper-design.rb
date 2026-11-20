cask "paper-design" do
  version "0.5.19,261113wtgdq1unn"
  sha256 "a4c2b929be9d1b5de5321a63e3e5589c7aec9e3d5e10ea56f88d3c21ca30593c"

  url "https://download.todesktop.com/2601167vjw8xe/Paper%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-arm64.dmg"
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
  depends_on macos: :ventura

  app "Paper.app"

  uninstall quit: "com.todesktop.2601167vjw8xe"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.todesktop.2601167vjw8xe.sfl*",
    "~/Library/Application Support/Paper",
    "~/Library/Preferences/com.todesktop.2601167vjw8xe.plist",
  ]
end
