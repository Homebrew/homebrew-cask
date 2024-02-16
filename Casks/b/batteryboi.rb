cask "batteryboi" do
  version "2.4.1,27"
  sha256 "9406640e508ead5e66c28a3121d1b96e22576acf49aba849c11fdb5ba019ba23"

  url "https://github.com/thebarbican19/BatteryBoi/releases/download/Version#{version.csv.first}%23#{version.csv.second}/BatteryBoi-V#{version.csv.first}.dmg",
      verified: "github.com/thebarbican19/BatteryBoi/"
  name "BatteryBoi"
  desc "Battery indicator for the menu bar"
  homepage "https://batteryboi.ovatar.io/"

  livecheck do
    url :url
    regex(/^(?:Version[._-]?)?v?(\d+(?:\.\d+)+)(?:#(\d+))?$/i)
    strategy :github_latest do |json, regex|
      match = json["tag_name"]&.match(regex)
      next if match.blank?

      match[2].present? ? "#{match[1]},#{match[2]}" : match[1]
    end
  end

  depends_on macos: ">= :big_sur"

  app "BatteryBoi.app"

  zap trash: [
    "~/Library/Application Support/BatteryBoi",
    "~/Library/Caches/com.ovatar.batteryapp",
    "~/Library/HTTPStorages/com.ovatar.batteryapp",
    "~/Library/Preferences/com.ovatar.batteryapp.plist",
    "~/Library/Saved Application State/com.ovatar.batteryapp.savedState",
  ]
end
