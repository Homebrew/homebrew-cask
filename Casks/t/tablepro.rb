cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.31.4"
  sha256 arm:   "15cb29232ea4b904e7a843ff2e259337e15c280c5c59e167a9890d14e170914b",
         intel: "546f4f6f589e62f6e09077151033d2b063f1b3f743bcf73d8c0fa7a9f1cb060f"

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
