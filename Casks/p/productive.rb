cask "productive" do
  arch arm: "-arm64"

  version "1.17.0"
  sha256 arm:   "15a38b26b32df30f17466dc91864db08bc44281cfd2d9e751017ad1171e7aab7",
         intel: "e442bad56eed0ece3e5f284b638fe8b7428c506f5e6832b9ba4e89262ef39f77"

  url "https://download.productive.io/desktop/electron/Productive-#{version}#{arch}.dmg"
  name "Productive"
  desc "Agency management system"
  homepage "https://productive.io/"

  livecheck do
    url "https://download.productive.io/desktop/electron/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

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
