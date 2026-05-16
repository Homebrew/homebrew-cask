cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.42.0"
  sha256 arm:   "4954d50376b450e52058b95290617cb3b8e6fe23b6bee0afae64fda2884a75fb",
         intel: "f718055f1f0bdb77b629020052399f2ae9656b79d1e1e9cc2806662fc5a88952"

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
