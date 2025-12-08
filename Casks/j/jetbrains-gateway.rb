cask "jetbrains-gateway" do
  arch arm: "-aarch64"

  version "2025.3,253.28294.342"
  sha256 arm:   "b10cabda93c88d27bcc135a44a1fd98fe60fe8305606d6e75a0d5b736f0df274",
         intel: "282fd7f302d95adeed022f8d6c679d3292778f96205394af52dd090f6201f338"

  url "https://download.jetbrains.com/idea/gateway/JetBrainsGateway-#{version.csv.first}#{arch}.dmg"
  name "jetbrains-gateway"
  desc "Remote development gateway by Jetbrains"
  homepage "https://www.jetbrains.com/remote-development/gateway/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=GW&latest=true&type=release"
    strategy :json do |json|
      json["GW"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  auto_updates true

  app "JetBrains Gateway.app"
  binary "#{appdir}/JetBrains Gateway.app/Contents/MacOS/gateway"

  zap trash: [
    "~/Library/Application Support/JetBrains/JetBrainsGateway#{version.major_minor}",
    "~/Library/Caches/JetBrains/JetBrainsGateway#{version.major_minor}",
    "~/Library/Logs/JetBrains/JetBrainsGateway#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.gateway.plist",
    "~/Library/Saved Application State/com.jetbrains.gateway.savedState",
  ]
end
