cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.56.2"
  sha256 arm:   "b93bb2ad181def1d420caf6ad98f586f39210e6cffd136083e9bb45dc9475907",
         intel: "c5b2fc797bca148f2501fbf47628de82898efa0a92cf98841dea99a0c1129b8d"

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
