cask "productive" do
  arch arm: "-arm64"

  version "1.11.0"
  sha256 arm:   "f7c8d4a61c9e1e623b86bec78a4fa3d145d04a76071e6cb1090c75a39450380b",
         intel: "d90e084221874402d7e89614013a05f4cbfe1de3ee8cb94a62b8d0fc6012c1cf"

  url "https://download.productive.io/desktop/electron/Productive-#{version}#{arch}.dmg"
  name "Productive"
  desc "All-in-one agency management system"
  homepage "https://productive.io/"

  livecheck do
    url "https://productive.io/apps/"
    regex(%r{href=.*?/desktop/electron/Productive-(\d+(?:\.\d+)+)#{arch}\.dmg}i)
  end

  depends_on macos: ">= :catalina"

  app "Productive.app"

  zap trash: [
    "~/Library/Application Support/productive",
    "~/Library/Caches/io.productive",
    "~/Library/Caches/io.productive.ShipIt",
    "~/Library/Caches/productive-updater",
    "~/Library/Preferences/io.productive.plist",
    "~/Library/Saved Application State/io.productive.savedState",
  ]
end
