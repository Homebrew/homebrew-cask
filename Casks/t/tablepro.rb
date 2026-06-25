cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.53.0"
  sha256 arm:   "bdf25a2eb4086fe5e266ea56023536bc245219fac97e0d13eb313c52d1a8ea83",
         intel: "5f56846ec5b72520857203cbe2ea672a8fb2aafb45f13e6a00540cea3800fbc7"

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
