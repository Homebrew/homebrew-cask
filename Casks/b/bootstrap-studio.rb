cask "bootstrap-studio" do
  arch arm: "arm64", intel: "x64"

  version "6.7.2"
  sha256 arm:   "153d057cfa4b4ae87c023d0fd6bb2c6840641790e45082fec73f223546617107",
         intel: "21c798f2fe1f64e6b7af4d2be65ac1a0f1ed44ba28672461d3879e2fd237a9e1"

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
