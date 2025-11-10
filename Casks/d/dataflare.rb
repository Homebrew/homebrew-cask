cask "dataflare" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.6.3"
  sha256 arm:   "e603e4fa3f2aea7b9561714c29292d5074ca6dcfcd3571ade4206b48720f61b0",
         intel: "7701a1457651fa2e5165e5733ca071d55de27ad16cb98f52530ea81de7258cca"

  url "https://assets.dataflare.app/release/darwin/#{arch}/Dataflare-#{version}.dmg"
  name "Dataflare"
  desc "Database manager"
  homepage "https://dataflare.app/"

  livecheck do
    url "https://assets.dataflare.app/release/darwin/#{arch}/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true

  app "Dataflare.app"

  zap trash: [
    "~/Library/Application Support/app.dataflare.desktop",
    "~/Library/Caches/app.dataflare.desktop",
    "~/Library/Caches/Dataflare",
    "~/Library/HTTPStorages/Dataflare.binarycookies",
    "~/Library/Preferences/app.dataflare.desktop.plist",
    "~/Library/Preferences/Dataflare.plist",
    "~/Library/WebKit/app.dataflare.desktop",
    "~/Library/WebKit/Dataflare",
  ]
end
