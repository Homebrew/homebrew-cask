cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.29.0"
  sha256 arm:   "753f9ad8e5ad46ff5a0c6237d2c3e39306690f24a5740531e229d2899eaec56a",
         intel: "dab083746dd64cbf81c03aac2c442069c31ba801ee17ab38afa31f0d89166aff"

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
