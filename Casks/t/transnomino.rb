cask "transnomino" do
  version "8.7"
  sha256 "2cbe4d325157c874def28c267e6867f50d7bcd3e155e82e102d3a35367618ad5"

  url "https://www.transnomino.com/download/Transnomino-#{version}.dmg"
  name "Transnomino"
  desc "Batch rename utility"
  homepage "https://www.transnomino.com/"

  livecheck do
    url "https://www.transnomino.com/download/version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Transnomino.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/com.bastiaanverreijt.Transnomino.help*",
    "~/Library/HTTPStorages/com.bastiaanverreijt.Transnomino",
    "~/Library/Preferences/com.bastiaanverreijt.Transnomino.plist",
  ]
end
