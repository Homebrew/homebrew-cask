cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.40.0"
  sha256 arm:   "4da102136bfa70b11d779c1843a61cbbade28235860597c2f5df357be993d1da",
         intel: "37dbbe6b8cd1309be01fbd71589e66ae7fc0eb62197865c93de1507809314ee3"

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
