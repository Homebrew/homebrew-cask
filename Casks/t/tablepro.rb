cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.26.0"
  sha256 arm:   "ecd29c4fb54acbff35b2be2ca87a4822fdfe045d70df829c776299e0ec01bd4e",
         intel: "0e3f349e432316de255234b37ee986799d7b929e20a8f278278a917b62366fbd"

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
