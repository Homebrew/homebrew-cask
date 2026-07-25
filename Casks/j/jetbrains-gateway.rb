cask "jetbrains-gateway" do
  arch arm: "-aarch64"

  version "2026.2,262.8665.250"
  sha256 arm:   "154bacee68e2616022c888a11238691082d8ba92c015d8eb03cc42968bc9536a",
         intel: "e11b174685d4bc1388201115f669919b994d598e1783b31a9e5c545bec4af002"

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
  depends_on :macos

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
