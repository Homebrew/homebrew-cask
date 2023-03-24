cask "bootstrap-studio" do
  arch arm: "arm64", intel: "x64"

  version "6.3.1"
  sha256 arm:   "8ab03fd6fc5881c9a1f6d11814d5d75d1bc3c1b100cae3400f7e7b8a3e045991",
         intel: "6399a7107e68b0d28c4bedb03b02e2c2d2a1685f0c4711989c5466f9020c334e"

  url "https://releases.bootstrapstudio.io/#{version}/Bootstrap%20Studio%20(#{arch}).dmg"
  name "Bootstrap Studio"
  desc "Design and prototype websites using the Bootstrap framework"
  homepage "https://bootstrapstudio.io/"

  livecheck do
    url "https://bootstrapstudio.io/pages/releases/"
    regex(/Version\s*(\d+(?:\.\d+)+)/i)
  end

  auto_updates true

  app "Bootstrap Studio.app"

  zap trash: [
    "~/Library/Application Support/bstudio",
    "~/Library/Application Support/CrashReporter/Bootstrap Studio*",
    "~/Library/Caches/bg.zine.bootstrapstudio",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/bg.zine.bootstrapstudio.sfl2",
    "~/Library/Caches/bg.zine.bootstrapstudio.ShipIt",
    "~/Library/Preferences/ByHost/bg.zine.bootstrapstudio.ShipIt.*",
    "~/Library/Preferences/bg.zine.bootstrapstudio.helper.plist",
    "~/Library/Preferences/bg.zine.bootstrapstudio.plist",
    "~/Library/Saved Application State/bg.zine.bootstrapstudio.savedState",
  ]
end
