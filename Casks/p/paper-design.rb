cask "paper-design" do
  version "0.1.12,2604116ylbmu5uc"
  sha256 "05b7fffbbd23fdadb00d11c2ca828d55eb81a90fb643b7aef8e87c7e459e971e"

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
  depends_on macos: ">= :monterey"

  app "Paper.app"

  uninstall quit: "com.todesktop.2601167vjw8xe"

  zap trash: [
    "~/Library/Application Support/Paper",
    "~/Library/Preferences/com.todesktop.2601167vjw8xe.plist",
  ]
end
