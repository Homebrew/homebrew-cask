cask "palmier-pro" do
  version "0.9.0"
  sha256 "cc232de76eb815f9464eaf3cb5cba00360f2889c81ddd5b0094d2ba672fdeaee"

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
