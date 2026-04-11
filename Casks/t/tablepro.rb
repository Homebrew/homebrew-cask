cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.31.0"
  sha256 arm:   "2973725034b47c17406519394eb1967e2ff5b6281eb66433835d0eca4b447a34",
         intel: "1a25e0a06029cc0d166e0002f94a8a34321c9436e6e7506dc5da2a03c8d3e7c6"

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
