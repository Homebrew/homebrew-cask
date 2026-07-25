cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.60.1"
  sha256 arm:   "84a1b81733177262a26d65fbccb982363d4740462abf9b9d74c951dbce4eede9",
         intel: "b253a0f0b9efe2d33aef60f9b7b746754210c31ac428e8000937c65f86437700"

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
