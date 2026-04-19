cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.33.0"
  sha256 arm:   "95f020d1441ec9bffda1eb04bed246bd12678b1b674395266f67910bd304254c",
         intel: "c15f79b3faf3f7edd2f496a69b7c6d77be3d79cced198131cab2e468d2c2f520"

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
