cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.32.0"
  sha256 arm:   "fbaf899c0ca28d8b3c8785f7c9b305bc5ce5563d2e5edf6b3d1f06737512b771",
         intel: "f9eda953af5d051c74c6fe174b2468ef560d9a95e5dc1a7c30bfc8b606c02d1c"

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
