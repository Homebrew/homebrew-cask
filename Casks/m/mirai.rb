cask "mirai" do
  version "0.7.2"
  sha256 "acc01f61440c75b6c5d6bff2b44b490fd62ee2bb27293d66664f32299a214d8d"

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
  binary "#{appdir}/Mirai.app/Contents/Resources/bin/mirai"

  zap trash: [
    "~/.config/com.trymirai.cli",
    "~/Library/Application Support/mirai",
    "~/Library/Caches/com.mirai.tech.chat",
    "~/Library/Caches/com.mirai.tech.chat.ShipIt",
    "~/Library/WebKit/com.mirai.tech.chat",
  ]
end
