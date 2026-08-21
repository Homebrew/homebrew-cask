cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.67.0"
  sha256 arm:   "b902e9be142482237037daa046b17c2afc823c9cb2fcffbdd4fbb55562ac33f3",
         intel: "3899b39aae38c6a70c6b59cc8fd85aa1c001e862de4dc962ec7c9020d5d9ed4e"

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
