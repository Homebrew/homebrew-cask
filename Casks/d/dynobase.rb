cask "dynobase" do
  arch arm: "arm64", intel: "x64"

  version "2.6.0,260818hda0bagiv"
  sha256 arm:   "f90c1295650f01e9cc8f06c553fcbd955b439409251fefc20b6443a60a3b4537",
         intel: "d6f0d5b670806e2e13b06cb2c684045d041fc4aa8f53d275f34de3ef068e75c4"

  url "https://download.todesktop.com/220811zswf4aj4x/Dynobase%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}.dmg",
      verified: "download.todesktop.com/220811zswf4aj4x/"
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

  depends_on :macos

  app "Dynobase.app"

  zap trash: [
    "~/Library/Application Support/dynobase",
    "~/Library/Saved Application State/com.rwilinski.dynobase.savedState",
  ]
end
