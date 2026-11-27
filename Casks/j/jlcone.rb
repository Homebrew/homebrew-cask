cask "jlcone" do
  arch arm: "arm64", intel: "x64"

  version "1.0.74"
  sha256 arm:   "6c5182500629cace0198f19a1c8c131210ebe230a8cf8896315c322d60ab8b1c",
         intel: "a957e37789d9a704153250cb79cca43bea796a822478312b2198208e7596855f"

  url "https://rs.jlcone.com/static/APP/app_version/jlcone-#{version}-#{arch}.dmg"
  name "JLCONE"
  desc "Desktop client for JLCPCB quoting, ordering and order tracking"
  homepage "https://jlcone.com/download"

  livecheck do
    url "https://rs.jlcone.com/static/APP/app_version/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on :macos

  app "JLCONE.app"

  uninstall quit:       "com.jlcpcb.www",
            login_item: "JLCONE"

  zap trash: [
    "~/Library/Application Support/jlcone",
    "~/Library/Caches/com.jlcpcb.www.ShipIt",
    "~/Library/Caches/jlcone-updater",
    "~/Library/Preferences/com.jlcpcb.www.plist",
  ]
end
