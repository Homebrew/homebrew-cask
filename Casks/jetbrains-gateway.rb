cask "jetbrains-gateway" do
  arch arm: "-aarch64"

  version "223.8214.51"
  sha256 arm:   "555ca346ec41de06223d3a4b5e9247809e07c8339bff0d139b624634c812c8e5",
         intel: "4b86b523b02f2df5150bc965bcef7e1a0bf7a7e6d2233a3a2603529a8577dd43"

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
