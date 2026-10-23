cask "bootstrap-studio" do
  arch arm: "arm64", intel: "x64"

  version "9.0.0"
  sha256 arm:   "f533e05719320e452c59bfbe688e2ffda2bca61e648baa80608c56209f8f3ba7",
         intel: "eb90f9468d89b4e451f0ed9bcf3218518ddd2d58a07e7d8b70443633cb68398d"

  url "https://releases.bootstrapstudio.io/#{version}/Bootstrap%20Studio%20(#{arch}).dmg"
  name "Bootstrap Studio"
  desc "Design and prototype websites using the Bootstrap framework"
  homepage "https://bootstrapstudio.io/"

  livecheck do
    url "https://bootstrapstudio.io/pages/releases/"
    regex(/Version\s*v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on :macos

  app "Bootstrap Studio.app"

  zap trash: [
    "~/Library/Application Support/Bootstrap Studio",
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
