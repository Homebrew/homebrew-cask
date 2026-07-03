cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.55.0"
  sha256 arm:   "f1ede48ec6213d0041d28f6a470ba0aaddff642aec56c8f0ae059d7ed239ee2f",
         intel: "a8f631bd007e035f5d5fb851bd9f9eb5e1dba1ec3c6d0bc37b5dc2f992463396"

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
