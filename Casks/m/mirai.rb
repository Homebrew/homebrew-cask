cask "mirai" do
  version "0.6.10"
  sha256 "fb41e40889d223c9b5e881a309e1cf9f2012793a5eca551609668bd77535948a"

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
