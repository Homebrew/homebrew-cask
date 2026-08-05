cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.63.0"
  sha256 arm:   "2dbe1c50883b4a33e8dae2da5b5f143992dc358c1e0b1719503962d1d44f8bfe",
         intel: "25c7c72d5c4acd5e975b66ee9de65f32f72dc639e45f7ece18a26cb379496e7f"

  url "https://github.com/TableProApp/TablePro/releases/download/v#{version}/TablePro-#{version}-#{arch}.dmg",
      verified: "github.com/TableProApp/TablePro/"
  name "TablePro"
  desc "Native database client for many database types"
  homepage "https://tablepro.app/"

  livecheck do
    url "https://raw.githubusercontent.com/TableProApp/TablePro/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "TablePro.app"

  zap trash: [
    "~/Library/Application Support/TablePro",
    "~/Library/Caches/com.TablePro",
    "~/Library/HTTPStorages/com.TablePro",
    "~/Library/Preferences/com.TablePro.plist",
  ]
end
