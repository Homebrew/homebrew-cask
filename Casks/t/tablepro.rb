cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.51.1"
  sha256 arm:   "364d677fdf4ba39b6c5c8707c513bc4741664038149f8b68efc3129d87159256",
         intel: "dbadd20498cb0c975c28f932af43b9fd9e6a1df721eb5e84908cce44ef574a8f"

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
