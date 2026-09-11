cask "dynobase" do
  arch arm: "arm64", intel: "x64"

  version "3.0.0,2609110vb1mdze6"
  sha256 arm:   "df6e0ef8dd431b7b1a05ae6eff649a1421a2e71118f7685da33a1ad9dda338af",
         intel: "2580ede574957513802e7eb4fbb84f347b1709fb30300378eb40ec9b2c1344e3"

  url "https://download.todesktop.com/220811zswf4aj4x/Dynobase%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}.dmg"
  name "Dynobase"
  desc "GUI Client for DynamoDB"
  homepage "https://dynobase.dev/"

  livecheck do
    url "https://download.todesktop.com/220811zswf4aj4x/td-latest-mac.json"
    regex(/Dynobase\s+v?(\d+(?:\.\d+)+)\s+.*?Build\s+(\w+)[._-]#{arch}/i)
    strategy :json do |json, regex|
      match = json.dig("artifacts", "dmg", arch, "path")&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: :monterey

  app "Dynobase.app"

  zap trash: [
    "~/Library/Application Support/dynobase",
    "~/Library/Saved Application State/com.rwilinski.dynobase.savedState",
  ]
end
