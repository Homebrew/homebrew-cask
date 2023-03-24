cask "infra" do
  version "0.47.0"
  sha256 "41f2d71fe84935c4ec3eb13e73c91e9c5b33c38c599bf70a72756091356d13d1"

  url "https://download.infra.app/darwin/Infra-darwin-universal-#{version}.zip"
  name "infra"
  desc "Kubernetes desktop client"
  homepage "https://infra.app/"

  livecheck do
    url "https://api.infra.app/update/darwin/0.0.1"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true

  app "Infra.app"

  zap trash: [
    "~/Library/Application Support/infra",
    "~/Library/Caches/app.infra.infra",
    "~/Library/Caches/app.infra.infra.ShipIt",
    "~/Library/Preferences/app.infra.infra.plist",
    "~/Library/Saved Application State/app.infra.infra.savedState",
  ]
end
