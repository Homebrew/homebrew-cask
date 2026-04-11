cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.31.1"
  sha256 arm:   "134e887435c376fb5b77f7518b5e59abaab7a7b7969d7e625f7e6fc3cae46d6b",
         intel: "e274b4621f8890c530f0f7bd779b7cb2f97c5f8961159c62fd9eb438952f5aa1"

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
