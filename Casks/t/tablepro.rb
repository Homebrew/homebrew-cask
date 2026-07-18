cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.58.0"
  sha256 arm:   "65208986c1e106654a629dcbb99e8e5ebb5ef2deebfd85a874c1229f61cedb02",
         intel: "3fa0e6512e428e09351a5bcdf50451ee0cad0786de5a0a4dc96426658e2695b0"

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
