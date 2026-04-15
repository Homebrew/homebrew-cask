cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.31.5"
  sha256 arm:   "424385a9a6d4bb0ce136c50e70fdd5598ba509855e76310102f810e8f4e55d9c",
         intel: "9506e106345320150f2c23a52ef3b34010b2e525f13e22b31863a7de4323b155"

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
  depends_on macos: ">= :sonoma"

  app "TablePro.app"

  zap trash: [
    "~/Library/Application Support/TablePro",
    "~/Library/Caches/com.TablePro",
    "~/Library/HTTPStorages/com.TablePro",
    "~/Library/Preferences/com.TablePro.plist",
  ]
end
