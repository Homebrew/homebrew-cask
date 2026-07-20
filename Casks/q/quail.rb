cask "quail" do
  arch arm: "-arm64"

  on_arm do
    version "3.0.0"
    sha256 "270fca5c4381775b6bfe75c7b9b0abb3492166745f0805d0dae3862776500ea2"

    depends_on macos: :monterey
  end
  on_intel do
    version "2.4.0"
    sha256 "481b42f6a2c9ffd94c450f28e49692e95030d11cf20c2823732b117bac1e8992"

    livecheck do
      skip "Legacy version"
    end

    depends_on macos: :catalina
  end

  url "https://github.com/1000ch/quail/releases/download/v#{version}/Quail-#{version}#{arch}.dmg"
  name "Quail"
  desc "Unofficial but officially accepted esa app"
  homepage "https://github.com/1000ch/quail"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "Quail.app"

  zap trash: [
    "~/Library/Application Support/Quail",
    "~/Library/Caches/net.1000ch.quail",
    "~/Library/Caches/net.1000ch.quail.ShipIt",
    "~/Library/Preferences/net.1000ch.quail.helper.plist",
    "~/Library/Preferences/net.1000ch.quail.plist",
    "~/Library/Saved Application State/net.1000ch.quail.savedState",
  ]
end
