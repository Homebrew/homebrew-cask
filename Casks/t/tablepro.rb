cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.52.0"
  sha256 arm:   "eeec9853fae422a89af0ca77d2986a7bc54345515cd570ef3fadda542c583ac5",
         intel: "a2d2f63a15772290e9c6ef4963f3324fa2456f4e08d1e584e857b159b479109b"

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
