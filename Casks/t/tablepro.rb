cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.45.0"
  sha256 arm:   "1ff04e036bad484006308ab769211d1c235242c06a4f7776a9ed9d32228999ab",
         intel: "744bafa71997f275bdfc6b99bbd5a42e90296c57e944f0addf29e694d67099df"

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
