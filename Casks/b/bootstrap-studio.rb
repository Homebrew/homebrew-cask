cask "bootstrap-studio" do
  arch arm: "arm64", intel: "x64"

  version "6.6.0"
  sha256 arm:   "f0fb3bd6db024688afea8918e64f81d2757a8ca7dcbd5b90342d3c916a9d5012",
         intel: "dfbb77d4712865d3d5c83cd2bb69c565707797f236996bda9d2071ca92fec2ec"

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
