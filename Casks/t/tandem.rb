cask "tandem" do
  arch arm: "arm64", intel: "x64"

  version "2.2.1632,2507318eolkhv78"
  sha256 arm:   "158678f51f418bb4df2b0656947a163227b43016be44407b719ae8e1c92703dd",
         intel: "76312b7db4f4c2f2e8270f13b636d36a38050c36e097cbb4fb7e287731442221"

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
  depends_on macos: ">= :high_sierra"

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
