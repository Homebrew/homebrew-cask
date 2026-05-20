cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.43.1"
  sha256 arm:   "86f0e2478f722bdd1197cba3e0e731dbfbd9914746c56b7cc26490c4e8b64339",
         intel: "a037453d4dfe892e7f1be287c4eb00f439b922d98800a172b37b20da46a3e6a3"

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
