cask "jetbrains-gateway" do
  arch arm: "-aarch64"

  version "2023.2.2"
  sha256 arm:   "b6ae26eaa6f7f4b77d1bf3d75658eb8ae70bccce4b7e8e62d18dada0810b382c",
         intel: "cfa68c2b1290f1d51aa37a918a79342e42b6a50b2563524757ec8bd700008fba"

  url "https://download.jetbrains.com/idea/gateway/JetBrainsGateway-#{version}#{arch}.dmg"
  name "jetbrains-gateway"
  desc "Remote development gateway by Jetbrains"
  homepage "https://www.jetbrains.com/remote-development/gateway/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=GW&latest=true&type=release"
    strategy :json do |json|
      json["GW"].map { |release| release["version"] }
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "JetBrains Gateway.app"

  zap trash: [
    "~/Library/Application Support/JetBrains/JetBrainsGateway2021.3",
    "~/Library/Caches/JetBrains/JetBrainsGateway2021.3",
    "~/Library/Logs/JetBrains/JetBrainsGateway2021.3",
    "~/Library/Preferences/com.jetbrains.gateway.plist",
    "~/Library/Saved Application State/com.jetbrains.gateway.savedState",
  ]
end
