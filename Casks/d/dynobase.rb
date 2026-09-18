cask "dynobase" do
  arch arm: "arm64", intel: "x64"

  version "3.0.5,260918e3qb67fdo"
  sha256 arm:   "6d29b31873639f7118dfaa3dfa7641475d80f3bc74472ee2135b926edc1e558c",
         intel: "fa803ccb142871fbaf74c053cb2b9e90134193f850749f5907473be2beaec5cd"

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
