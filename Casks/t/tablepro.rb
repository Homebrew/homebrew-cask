cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.65.0"
  sha256 arm:   "a65048311ee73bfafe70a9ad7891c354c4ad4dfe8dcf408683495045b2bd4abf",
         intel: "aea44cf4485707b4fcb232e85677ed5db3234139c799724f3adbe4f0d60bd2c2"

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
