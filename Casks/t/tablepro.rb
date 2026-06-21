cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.52.1"
  sha256 arm:   "7afa754f6901f35f41033f2702484e92f4110eb277a891ee0c2e558bf81c8a61",
         intel: "f750157d1288d253d163ceab3a05ff75c2c97b394d8737372c456e6169fa3b61"

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
