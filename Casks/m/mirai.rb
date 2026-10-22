cask "mirai" do
  version "0.6.13"
  sha256 "45d4f3b63a6e68a581d501630065ea2210897373bfbd3dbcd8d2648da8affd2a"

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
