cask "jlcone" do
  arch arm: "arm64", intel: "x64"

  version "1.0.72"
  sha256 arm:   "43ece43a58848983ad816e2c22a4b587900d73b667d2c290bbf282f47a4abc93",
         intel: "97d6d45c92d8669f81d128f3b3749c27e6d1dfc5896647e03d8825d8ecea51ae"

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
