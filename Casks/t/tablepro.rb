cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.66.0"
  sha256 arm:   "c66a417eba4c0d07702a69ded021e7b66b0f1aa3c916be71c9324fe8fb94a2d1",
         intel: "b3cd233e301f1aa202bda47a6c1b3cf83c829e78c8840b087d659f6e17016dc3"

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
