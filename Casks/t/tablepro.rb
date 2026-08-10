cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.64.0"
  sha256 arm:   "fc9d4fc717d41babd3a28d677a226b244749c6b24136cdc5b8fe43a24dda07fd",
         intel: "0aa16e8bd092cbaedefa757577d54dad2c35a0a9e86ed3f952054f64d4c31e6b"

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
