cask "bootstrap-studio" do
  arch arm: "arm64", intel: "x64"

  version "7.0.2"
  sha256 arm:   "3896507f43c0a5e3421308bd6ab46ef5f8adbd7d58910b2d20f45f4df4ca2858",
         intel: "259bba6f5afed82ff7ec8222a2e1928aa2d55548852f62409a92a92363e66046"

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
