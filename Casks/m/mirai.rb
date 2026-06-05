cask "mirai" do
  version "0.3.4"
  sha256 "61f4c816707683913ced04f7e8fcbc8868b820a98b97a7fbfdb6d32626fa03c0"

  url "https://assets.trymirai.com/app/mirai-#{version}-aarch64-apple-darwin.dmg"
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
    "~/Library/Caches/com.mirai.tech.chat.ShipIt/",
  ]
end
