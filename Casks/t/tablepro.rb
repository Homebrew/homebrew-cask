cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.27.0"
  sha256 arm:   "c99fcacad900579af02a8efd3cd03d10156f9d4ce24e879a8f53e2c33f4fdc97",
         intel: "c90744260f76bd3320fa0306d2d5ddb9163d3ca4e2bdb7b83db4c2b5c86c6b5c"

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
