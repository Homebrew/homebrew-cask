cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.56.1"
  sha256 arm:   "e69008ff1be169f13f2d651c9c62cb5e1b3245a2d8613d2ddcda1d898e456265",
         intel: "f472bc60b16bf500d58d54d1c3e88729e11f85ff02a88bde7d8ccc94771ca0fd"

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
