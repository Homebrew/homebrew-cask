cask "jetbrains-gateway" do
  arch arm: "-aarch64"

  version "2025.1.2,251.26094.128"
  sha256 arm:   "1cf7dcdbb5408c9c7711a436e4c763df147ce332ce2e1f260fa246af87b0a58e",
         intel: "b4e45266159352598d0cbd7b03283cb53260d20866ca77d57a43150e81cf3d09"

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
  depends_on macos: ">= :high_sierra"

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
