cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.50.0"
  sha256 arm:   "66825019860776b36f3e7e46d6d33a768d35c2d655ea962eeb27914fcb4a122c",
         intel: "66dc4767ae2e5738bf75800cd3b9cc6ecac73c840847467d177d629276bca6f2"

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
