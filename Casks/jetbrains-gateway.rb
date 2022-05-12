cask "jetbrains-gateway" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"

  version "221.5080.246"

  if Hardware::CPU.intel?
    sha256 "658ae23001592c6af7d44775386a10d00d949ccdc7b9eec2454a1fade9e5cd24"
  else
    sha256 "3be185ca9cef02b98158baba529925dabe69f837580375cb4667207d2b38d885"
  end

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
