cask "paper-design" do
  version "0.1.10,26031739o5exfj4"
  sha256 "fee531570bf5bdf07cf431ae1851029aa7a82cd5ab63ee93af958f8eb87cbc16"

  url "https://download.todesktop.com/2601167vjw8xe/Paper%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-arm64.dmg",
      verified: "download.todesktop.com/2601167vjw8xe/"
  name "Paper"
  desc "Design tool for creating interfaces and prototypes"
  homepage "https://paper.design/"

  livecheck do
    url "https://download.todesktop.com/2601167vjw8xe/latest-mac.yml"
    regex(/Paper\s+(\d+(?:\.\d+)+)\s+-\s+Build\s+([a-z0-9]+)-arm64\.dmg/i)
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
end
