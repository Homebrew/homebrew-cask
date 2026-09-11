cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.73.0"
  sha256 arm:   "d2ffbbd0d2f01d4754614e24883ed670bb053f1cb1b70a288068518df4ab4110",
         intel: "6291585d241616e47410a80deddf223a0bf9ef36bcf5770df5d516a891c7d507"

  url "https://github.com/TableProApp/TablePro/releases/download/v#{version}/TablePro-#{version}-#{arch}.dmg"
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
