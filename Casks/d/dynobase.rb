cask "dynobase" do
  arch arm: "arm64", intel: "x64"

  version "3.0.9,261028lve7nvlx0"
  sha256 arm:   "17b2099a1ddf84bd0f37206431d40406e8b28f9541c79d7dcfc4b47f33d83e98",
         intel: "45cf8999cbc163b6dc69a3c9511011723b1dec34bbdabdce71edb6b8a7c8af45"

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
