cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.62.0"
  sha256 arm:   "d8c741326a646a4da21afed76dc72ec09254ce685549bcda302e5fbbd3371580",
         intel: "87c4ae7ad8e09a139fd5ce62032e641dcd4ad1fd5f90ee241d153a43ec92cafc"

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
