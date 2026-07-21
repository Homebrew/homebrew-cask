cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.59.0"
  sha256 arm:   "7e1490616352b748466b03a990306bfa8f33b1ac630de6e06124c53794a4889d",
         intel: "6cd22b78a7cdd1c2c2a351eaec6857cb4174a9dfc8e948c2ebaadcf7b81c6ce9"

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
