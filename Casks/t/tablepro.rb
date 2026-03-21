cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.22.0"
  sha256 arm:   "c2672208a27389724e0d2820acb474f269dc7b022c677f4d7f64ffd7739a72dc",
         intel: "e69d326770cd0fff762fbb6f1ffaf3cf558f83b19bea6372925d86f20e58a210"

  url "https://github.com/datlechin/TablePro/releases/download/v#{version}/TablePro-#{version}-#{arch}.dmg",
      verified: "github.com/datlechin/TablePro/"
  name "TablePro"
  desc "Native database client for MySQL, PostgreSQL, SQLite, and MongoDB"
  homepage "https://tablepro.app/"

  livecheck do
    url "https://raw.githubusercontent.com/datlechin/TablePro/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "TablePro.app"

  zap trash: [
    "~/Library/Application Support/TablePro",
    "~/Library/Caches/com.TablePro",
    "~/Library/HTTPStorages/com.TablePro",
    "~/Library/Preferences/com.TablePro.plist",
  ]
end
