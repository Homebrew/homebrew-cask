cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.54.0"
  sha256 arm:   "a30db4d6f338b49631100038eec66d7ddf4caeb283f9ec5a8ffbd63d54636533",
         intel: "a00cae01d22f5e1c50eecb2bccfe602aa36fd8ab75d736c784ab977e6e2a3bbf"

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
