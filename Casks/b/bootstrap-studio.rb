cask "bootstrap-studio" do
  arch arm: "arm64", intel: "x64"

  version "7.1.1"
  sha256 arm:   "8a0138227c1080ded7be7c569a2cdf995e64aa2ae9dc541bbf2d5c82c8a5c286",
         intel: "a739f906e0549a2432a21869c6cd84ac4f1219e1e3e8665afbbb71e7efa838ad"

  url "https://releases.bootstrapstudio.io/#{version}/Bootstrap%20Studio%20(#{arch}).dmg"
  name "Bootstrap Studio"
  desc "Design and prototype websites using the Bootstrap framework"
  homepage "https://bootstrapstudio.io/"

  livecheck do
    url "https://bootstrapstudio.io/pages/releases/"
    regex(/Version\s*v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Bootstrap Studio.app"

  zap trash: [
    "~/Library/Application Support/bstudio",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/bg.zine.bootstrapstudio.sfl*",
    "~/Library/Application Support/CrashReporter/Bootstrap Studio*",
    "~/Library/Caches/bg.zine.bootstrapstudio",
    "~/Library/Caches/bg.zine.bootstrapstudio.ShipIt",
    "~/Library/Preferences/bg.zine.bootstrapstudio.helper.plist",
    "~/Library/Preferences/bg.zine.bootstrapstudio.plist",
    "~/Library/Preferences/ByHost/bg.zine.bootstrapstudio.ShipIt.*",
    "~/Library/Saved Application State/bg.zine.bootstrapstudio.savedState",
  ]
end
