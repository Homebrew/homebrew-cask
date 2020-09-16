cask "aurora-hdr" do
  version "1.0.0.5825"
  sha256 "ebf975075b5ac3dd58277f3ba52b2a0fc70989429ddbacc18a3bbb81cdd014ba"

  url "https://downloads.skylum.com/aurorahdr2019/mac/AuroraHDR2019_Distribution_v#{version.dots_to_underscores}.zip"
  appcast "http://aurorahdr2019mac.update.skylum.com/",
          must_contain: version.dots_to_underscores
  name "Aurora HDR"
  desc "HDR photo editor with filters, batch processing and more"
  homepage "https://skylum.com/aurorahdr"

  app "Aurora HDR 2019.app"

  uninstall delete: [
    "~/Library/Preferences/com.macphun.auroraHDR2019.plist",
    "~/Library/Caches/com.macphun.auroraHDR2019",
    "/Applications/Aurora HDR 2019.app",
    "/Applications/Aurora HDR 2019 Installer.app",
  ]
end
