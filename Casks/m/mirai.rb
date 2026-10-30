cask "mirai" do
  version "0.6.14"
  sha256 "2f126560ce29decfd92106695d7d9e22ce4ccfaafc0b5cf29edf7383019a8170"

  url "https://github.com/trymirai/uzu/releases/download/#{version}/mirai-#{version}-aarch64-apple-darwin.dmg"
  name "Mirai"
  desc "Inference engine for AI models"
  homepage "https://trymirai.com/"

  livecheck do
    url "https://sdk.trymirai.com/api/v1/app/latest"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Mirai.app"
  binary "#{appdir}/Mirai.app/Contents/Resources/cli/mirai"

  zap trash: [
    "~/.config/com.trymirai.cli",
    "~/Library/Application Support/mirai",
    "~/Library/Caches/com.mirai.tech.chat",
    "~/Library/Caches/com.mirai.tech.chat.ShipIt",
    "~/Library/WebKit/com.mirai.tech.chat",
  ]
end
