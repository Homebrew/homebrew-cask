cask "jetbrains-gateway" do
  arch arm: "-aarch64"

  version "222.3739.54"
  sha256 arm:   "327a8f097c6ae140e8a712b1570a15944b18049684da2cf0e0cdda9f712a2fdd",
         intel: "9908b84e1a69c59e63824e2ef337aba59dd17020f536f3b7d754abe5221115ee"

  url "https://download.jetbrains.com/idea/gateway/JetBrainsGateway-#{version}#{arch}.dmg"
  name "jetbrains-gateway"
  desc "Remote development gateway by Jetbrains"
  homepage "https://www.jetbrains.com/remote-development/gateway/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=GW&latest=true&type=release"
    strategy :page_match do |page|
      JSON.parse(page)["GW"].map do |release|
        (release["build"]).to_s
      end
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
