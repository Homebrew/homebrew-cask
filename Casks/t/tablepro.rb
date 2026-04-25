cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.35.0"
  sha256 arm:   "83b36a3c46107226fe6f055cddc975f70f179b68689de4af1ffe18996e4ed2f0",
         intel: "ed446cd45469c6774108f2111fbd8001cf3e6ee63fa6546ca05d869202376f61"

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
