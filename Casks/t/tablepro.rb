cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.27.1"
  sha256 arm:   "bf724a7d2bd9e7aefd233550b98c840b9e1b13cfab0af05773ad8f42a8067ffe",
         intel: "0c692bc93812eef0d0a6bb920839803944db3099ea123ffeade79e573098b0c0"

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
