cask "palmier-pro" do
  version "0.6.12"
  sha256 "9036a0fff5d25edd50e7f774d18a1a42621735bd14ca453b221ce9a79cf644e9"

  url "https://github.com/palmier-io/palmier-pro/releases/download/v#{version}/PalmierPro.dmg",
      verified: "github.com/palmier-io/palmier-pro/"
  name "Palmier Pro"
  desc "Video Editor built for AI"
  homepage "https://www.palmier.io/"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "PalmierPro.app"

  zap trash: [
    "~/Library/Application Support/PalmierPro",
    "~/Library/Caches/io.palmier.pro",
    "~/Library/Caches/PalmierPro",
    "~/Library/HTTPStorages/io.palmier.pro*",
    "~/Library/Logs/PalmierPro",
    "~/Library/Preferences/io.palmier.pro.plist",
  ]
end
