cask "jetbrains-gateway" do
  arch arm: "-aarch64"

  version "2026.3,263.7307.184"
  sha256 arm:   "8613d36a4984eff32d2afb56b78e622fa7d6dcb8ed133324e3b0fe788cec416b",
         intel: "831de5a1caf4bd5f797c863ac8ae996d9dc15013e1a381cb9b2fc40d1cda7f70"

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

  uninstall quit: "com.jetbrains.gateway"

  zap trash: [
    "~/Library/Application Support/JetBrains/JetBrainsGateway#{version.major_minor}",
    "~/Library/Caches/JetBrains/JetBrainsGateway#{version.major_minor}",
    "~/Library/Logs/JetBrains/JetBrainsGateway#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.gateway.plist",
    "~/Library/Saved Application State/com.jetbrains.gateway.savedState",
  ]
end
