cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.49.0"
  sha256 arm:   "cf3db227077d52e507f65fde997990f1dc2d358b82c46ec2649246a14a0e124d",
         intel: "4a7ec483dec4989f628fbc579ab2accb2a542eb762e70b3293132c5b0b66b5f4"

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
