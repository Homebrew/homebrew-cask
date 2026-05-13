cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.41.0"
  sha256 arm:   "598c1c4cb15e364859f7ec5e05ea4afe34d8b0f52c29195e7121da1215b8ab7b",
         intel: "e07f05e3a8f05bc83c3ded99daa02ddf8c834f3d73e0ae57ffffc3adfdad66a8"

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
