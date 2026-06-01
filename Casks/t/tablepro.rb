cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.47.0"
  sha256 arm:   "ad708cc59ce59747b96b9238315cca5adfe8cab7270b9125591810ed52de02e5",
         intel: "7d631b5f5d02e409d028fea255edd85b0b78dae5aafb6bd927d5a3392bc688ee"

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
