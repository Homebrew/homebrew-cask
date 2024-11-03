cask "transnomino" do
  version "8.8"
  sha256 "bf4d01239cdd3b36978e03ec36ad0882290df7b4807f6ec91706b4ffaafa706a"

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
