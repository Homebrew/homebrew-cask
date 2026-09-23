cask "palmier-pro" do
  version "0.10.0"
  sha256 "23dfe85164a7d7899fac7a7996528ce364a7075b15bf6bb59d35b047a33d1507"

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
