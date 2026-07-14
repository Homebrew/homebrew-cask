cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.57.0"
  sha256 arm:   "9ff135206d0272ce05a01d0a96c4dc5ad91c673be0c5f24331071b9df185eb59",
         intel: "fe064a5f603b351ae8562a2885da156c8f2297ed67a25ab08504abe4cd6a5c12"

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
