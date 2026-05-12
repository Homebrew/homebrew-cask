cask "jetbrains-gateway" do
  arch arm: "-aarch64"

  version "2026.1.1,261.23567.152"
  sha256 arm:   "a2b14039747d03fd12ee5870903f5b017ca9db81da0d29577bfacbe224fafbcd",
         intel: "d69aad011f2bd99c14fd1845303b32141861458bec3eb4f917f9f79123f6be20"

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
