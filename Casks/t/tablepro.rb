cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.43.0"
  sha256 arm:   "5c3e51ca895fdd5d784d06c9832efc9a54ffee43dcff8a46be02aa3f40822611",
         intel: "a905a980f382bcc1f327ca5cf5b63f24eb1534a22ce23e7aa2c225b9f8eeddbf"

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
