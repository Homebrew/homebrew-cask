cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.74.0"
  sha256 arm:   "69c05cdcaa4fb9765bcb9959dac53e8ddaff8ec24d983455144b00673448996f",
         intel: "426e7656918ee69fd2da455a3a3292d0abb0afbc1769409e120c6d21e12b44f9"

  url "https://github.com/TableProApp/TablePro/releases/download/v#{version}/TablePro-#{version}-#{arch}.dmg"
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
