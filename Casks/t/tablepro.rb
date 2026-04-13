cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.31.3"
  sha256 arm:   "8c6701e5a202d79ee65bcbce5213a30421a6bb16b336352235b9f62ce5e69092",
         intel: "bb225d60db55c4b1ca9f2bdd6b8e170f42e5dceb32e51eb003c1992d61dc52f1"

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
