cask "dataflare" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.0.2"
  sha256 arm:   "4476d14417f62be7095e12c65bd70b33f1b9c3585f4325231d63baaf2c7a78be",
         intel: "d1ef62148c3747bea27bda594f010131d8fcc2cf89dd0b347e37b474af07c1d8"

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
  depends_on macos: ">= :high_sierra"

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
