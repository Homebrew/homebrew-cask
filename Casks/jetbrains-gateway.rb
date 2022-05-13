cask "jetbrains-gateway" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"

  version "221.5591.55"

  if Hardware::CPU.intel?
    sha256 "33eea67f6fc7a8a3c10d1677788a1af84f8c8f374a37e3993b74f11769938c73"
  else
    sha256 "d5a1d742a126eeac83f19ba2d65c76ef2e2d70b147041e38d9ef589b0e163dc9"
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
