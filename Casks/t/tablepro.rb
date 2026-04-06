cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.27.5"
  sha256 arm:   "faa69f41c2f758fec1648a13bd01e53918a02caf0df6dc8a4b327acd6af140a8",
         intel: "fed21a981deffb47934a58825d1d4e6c160f3e275b3321544c06b9811955e2fe"

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
