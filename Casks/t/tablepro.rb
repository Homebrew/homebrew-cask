cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.56.0"
  sha256 arm:   "a27b3d7c0e6447bb305fe6de67d8937f8a283db9c953c4490c30e69a11eab49a",
         intel: "5760cc0b6d404a18d5f128f8e379dccf53f6ab77c53493e7f476bd76b3f4196a"

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
