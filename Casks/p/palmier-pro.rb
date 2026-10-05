cask "palmier-pro" do
  version "0.11.0"
  sha256 "00472bd2afe39ba8e9828851875290c96ce3f9db61e1c1e38820176b20281aac"

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
