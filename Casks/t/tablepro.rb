cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.44.0"
  sha256 arm:   "41997899e6ecdbca9ebd3877db15165724c9c43dc52bb80a773733f1ec3309c0",
         intel: "c9a3ecbed2809920455be2a2bb1c3e7d03700491b3c9c3677b608341d37c2115"

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
