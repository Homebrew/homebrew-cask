cask "dolphin@beta" do
  version "5.0-21460,0b,8c"
  sha256 "eea2cc9248bea9279bf895469e624c015ecb628017a4bfc6debf01c649e15dcf"

  url "https://dl.dolphin-emu.org/builds/#{version.csv.second}/#{version.csv.third}/dolphin-master-#{version.csv.first}-universal.dmg"
  name "Dolphin Beta"
  desc "Emulator to play GameCube and Wii games"
  homepage "https://dolphin-emu.org/"

  livecheck do
    url "https://dolphin-emu.org/update/latest/beta/"
    regex(%r{/builds/([^/]+)/([^/]+)/dolphin-master-v?(\d+(?:[.-]\d+)+)-universal.dmg}i)
    strategy :json do |json|
      macos_artifact = json["artifacts"].find { |artifact| artifact["system"].include?("macOS") }
      match = macos_artifact["url"].match(regex)
      "#{match[3]},#{match[1]},#{match[2]}"
    end
  end

  conflicts_with cask: [
    "dolphin",
    "dolphin@dev",
  ]
  depends_on macos: ">= :catalina"

  app "Dolphin.app"
  app "Dolphin Updater.app"

  zap trash: [
    "~/Library/Application Support/Dolphin",
    "~/Library/Preferences/org.dolphin-emu.dolphin.plist",
  ]
end
