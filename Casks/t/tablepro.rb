cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.43.2"
  sha256 arm:   "de067c497212b15be68e72798b76ee1ba16dc798b66c0fc6437ec6758be70e12",
         intel: "319a2d73f179984ff2dc21e56c72d6d14060ca1d49c15c6901b380738518ca7f"

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
