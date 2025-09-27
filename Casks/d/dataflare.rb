cask "dataflare" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.5.0"
  sha256 arm:   "ab97ce2fd54fd76e845f7ac2fa5444abc73c9d123ab45ae6faa9408a4eac1e71",
         intel: "a9b379b5e05176236867854fd8b2df42943684103cca538f9ceee0c2092de73a"

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
