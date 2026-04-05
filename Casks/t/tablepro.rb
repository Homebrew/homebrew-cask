cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.27.4"
  sha256 arm:   "ae15e351bc8a213d8373f69216d86ee059cbe23a7a79de2bb16c0a0b20ae118d",
         intel: "3ed05c3437aaf1325080c618ff319531d92ce63c88ba0adbbda04edf8404b781"

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
