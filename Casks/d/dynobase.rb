cask "dynobase" do
  arch arm: "arm64", intel: "x64"

  version "3.0.3,2609132mr69dngf"
  sha256 arm:   "c0f575a33a34dc470441fc308c6dc6cd513f5d1ab4ee0eb72df4d7f727e8ecf6",
         intel: "64951971682dea0209d5cbb9fbadc4d50346d566d16118f13f4af97fe12d7019"

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
