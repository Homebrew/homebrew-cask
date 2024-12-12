cask "tandem" do
  arch arm: "arm64", intel: "x64"

  version "2.2.1625,2412111ddou26b4"
  sha256 arm:   "f38b5be536f231ad32959c17d7bc9f346799c7461e70fc63d83a1ec1992957b8",
         intel: "4830a7944a6a8d40ed2231a68a8934a8c2b3b76b943c005889ef739090e37e9a"

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
