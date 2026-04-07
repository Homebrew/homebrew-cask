cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.28.0"
  sha256 arm:   "5a507a7e73bb009a228665b3dcd6378157ed6f70c6ff2d769615ad08e0a79a5f",
         intel: "3309992ae51eab60cadaabe37f5455134d856bbc547b5a9280b9097115e70a61"

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
