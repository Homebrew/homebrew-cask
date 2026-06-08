cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.49.1"
  sha256 arm:   "b70db545b56507b27b0ad3448cd712a0a1600908b71c6d61da549cb7ff3c8b56",
         intel: "947e16f3926af91c985ce3bf774958e5cd2910b0c0843736b3ab97735323d4e1"

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
