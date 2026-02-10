cask "tandem" do
  arch arm: "arm64", intel: "x64"

  version "3.0.0,251226zduiutrs9"
  sha256 arm:   "752cb298635d614c59737806fb8ed13ba485d87d3a8ecc2b6eb03dc2f9c1503c",
         intel: "754f7d4070801d9c4a2d4ceebdc30f2edf25ba6fa18674e1eaf66089201b31f7"

  url "https://download.todesktop.com/200527auaqaacsy/Tandem%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}.dmg",
      verified: "download.todesktop.com/200527auaqaacsy/"
  name "Tandem"
  desc "Virtual office for remote teams"
  homepage "https://tandem.chat/"

  livecheck do
    url "https://download.todesktop.com/200527auaqaacsy/latest-mac.yml"
    regex(/Tandem\sv?(\d+(?:\.\d+)+)(?:\s-\sBuild\s([a-z\d]+?))?-#{arch}\.dmg/i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        match[2].present? ? "#{match[1]},#{match[2]}" : match[1]
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Tandem.app"

  zap trash: [
    "~/Library/Application Support/Caches/tandem-updater",
    "~/Library/Application Support/Tandem",
    "~/Library/Caches/tandem.app",
    "~/Library/Caches/tandem.app.ShipIt",
    "~/Library/Logs/Tandem",
    "~/Library/Preferences/ByHost/tandem.app.ShipIt.*.plist",
    "~/Library/Preferences/tandem.app.plist",
    "~/Library/Saved Application State/tandem.app.savedState",
  ]
end
