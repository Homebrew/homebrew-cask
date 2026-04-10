cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.30.0"
  sha256 arm:   "80e99b6a06a9036094046b88efa6c67bc46644f15211d2fba8061ec5b31aacf6",
         intel: "7bd058aa887bc0613546aeb3888399b7fac910b1e965c28ab3c39c9b3cd77627"

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
