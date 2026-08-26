cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.68.1"
  sha256 arm:   "164b62a8a929719f4fc655b4d3cf069352196f6af000fe16b4ffcb3200b1e488",
         intel: "2bfc40d471f6813bf7c0f4fab11f6735418d3fd656aaa8ae848ed9420ecca4d2"

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
