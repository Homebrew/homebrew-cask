cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.68.0"
  sha256 arm:   "83cd4f8f7ee86a741f84c6015a01a199029576b4efbb56f5ccfc09e4cb131f60",
         intel: "1cb6a8343a20b29913e2c718fb11b1428b6c36cea02d911d8a0be79d559981ba"

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
