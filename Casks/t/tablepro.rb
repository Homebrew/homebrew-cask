cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.48.0"
  sha256 arm:   "f8bd88eb9dbb12b0ad1f3a1551753a67301b4cafee17b5ec8f13f3ae88ca973a",
         intel: "d10ccfd2a0848ae7a3cdc05bdd1a90c9c151402841a171061051868fdbe0c438"

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
