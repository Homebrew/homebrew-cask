cask "palmier-pro" do
  version "0.12.0"
  sha256 "748bf35eed412df58f6645c097e421a8940c670afe4e5dcec548fe03f95c33c6"

  url "https://github.com/palmier-io/palmier-pro/releases/download/v#{version}/PalmierPro.dmg"
  name "Palmier Pro"
  desc "Video Editor built for AI"
  homepage "https://www.palmier.io/"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "PalmierPro.app"

  zap trash: [
    "~/Library/Application Support/io.palmier.pro",
    "~/Library/Application Support/PalmierPro",
    "~/Library/Caches/io.palmier.pro",
    "~/Library/Caches/PalmierPro",
    "~/Library/HTTPStorages/io.palmier.pro*",
    "~/Library/Logs/PalmierPro",
    "~/Library/Preferences/io.palmier.pro.plist",
  ]
end
