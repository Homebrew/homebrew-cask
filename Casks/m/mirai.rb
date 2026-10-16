cask "mirai" do
  version "0.6.9"
  sha256 "72132e5e964ecbd6a9f8bc526baeec6b98ed497715ecf5985d64dc1f40ef0039"

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
    "~/Library/Caches/com.mirai.tech.chat.ShipIt",
  ]
end
