cask "productive" do
  arch arm: "-arm64"

  version "1.14.0"
  sha256 arm:   "4652015b30ade1f08edc1cfdee95f9777e92bc8642da7245ef17d1680ad25c00",
         intel: "5d1455410c76d3fac39bb26c5dd818907279061142f2fb59922a3d30456a2984"

  url "https://download.productive.io/desktop/electron/Productive-#{version}#{arch}.dmg"
  name "Productive"
  desc "Agency management system"
  homepage "https://productive.io/"

  livecheck do
    url "https://download.productive.io/desktop/electron/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
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
