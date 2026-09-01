cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.70.0"
  sha256 arm:   "305dcd48a6950c19883d1e7dd2e4b9906d23cfdfde900d3c422f5820999c61eb",
         intel: "6bba8484b5b0c7508cd41e7de58a97ec20d0a4e00010687b0bc87103204f8c35"

  url "https://github.com/TableProApp/TablePro/releases/download/v#{version}/TablePro-#{version}-#{arch}.dmg"
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
