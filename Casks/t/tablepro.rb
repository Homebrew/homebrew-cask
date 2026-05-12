cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.40.2"
  sha256 arm:   "861e45c5cdad3bce25b28fd049cfe672c686d97d4e219c8e29cc2c9f424ee0d4",
         intel: "afc07f2b2b46131ebc37a00a5a888b6ab61c5fbde1e0800be45057c3265b1ffb"

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
