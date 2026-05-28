cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.46.0"
  sha256 arm:   "006a1fa605ca0eb931b213e6b28fcf72935656c9b85d2bba7f2352a9acb50224",
         intel: "3d8c82a8ff6ca626a9387ee2323135c5ee0480a45aaeee94daabd80a42601184"

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
