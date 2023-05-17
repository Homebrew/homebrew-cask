cask "jetbrains-gateway" do
  arch arm: "-aarch64"

  version "2023.1.2"
  sha256 arm:   "338edd281715b14193834ed01947c6161865e58d1416557316c2b298401a0272",
         intel: "320beadb9eb50f48eb431bcd2c88ec1c2e7e0ef2f1f2414aa3842de5930d79ff"

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
