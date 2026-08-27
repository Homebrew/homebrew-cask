cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.69.0"
  sha256 arm:   "e051ae9d12bef0479f458b7674e3a00d457310273340c89a741b61c303679781",
         intel: "21f9d0a88bdd528b7ebdc6a20c283f4c975565c6133c0252666cf6284d527f15"

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
