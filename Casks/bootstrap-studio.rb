cask "bootstrap-studio" do
  version "5.6.3"
  sha256 "7285011ef7a626f38ec87f578676e2fc007f817771c3c5d292b3746e7f56c752"

  url "https://bootstrapstudio.io/releases/desktop/#{version}/Bootstrap%20Studio.dmg"
  name "Bootstrap Studio"
  desc "Design and prototype websites using the Bootstrap framework"
  homepage "https://bootstrapstudio.io/"

  livecheck do
    url "https://bootstrapstudio.io/pages/releases/"
    strategy :page_match
    regex(/Version\s*(\d+(?:\.\d+)*)/i)
  end

  auto_updates true
  depends_on macos: ">= :yosemite"

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
