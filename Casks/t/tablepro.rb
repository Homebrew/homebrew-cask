cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.51.0"
  sha256 arm:   "ae85729f0e995faceddd0b0593e664e6b09551bf2911f82ab893bea59a8ef17b",
         intel: "47a531bd66da6753233535fa29915958ff07e2e7e02508626796226de51a921b"

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
