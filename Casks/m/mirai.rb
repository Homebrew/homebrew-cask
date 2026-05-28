cask "mirai" do
  version "0.3.0"

  on_arm do
    sha256 "3c47ac165417f1329304da9161208734607c7217377e8cd910d5b3489960f7b9"

    url "https://assets.trymirai.com/app/mirai-#{version}-aarch64-apple-darwin.dmg"
  end

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
