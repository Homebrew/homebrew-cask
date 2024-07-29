cask "dataflare" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.7.0"
  sha256 arm:   "6fe5170a05dcdee38553c70f2e8c484bff40e6e1cc92606f80718bb026f9abb6",
         intel: "1cd66bd8948b49fc224ea7f579517e3439aa76e1c0467670234fad91cfc4a50b"

  url "https://assets.dataflare.app/release/darwin/#{arch}/Dataflare-#{version}.dmg"
  name "Dataflare"
  desc "Simple and elegant database manager"
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
