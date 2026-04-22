cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.34.0"
  sha256 arm:   "6183d6a632ff5f82569c4589a53436dd88c450b086a9db94d72dca9261c33743",
         intel: "ca6eb450b57cf66192cd0e0325248290891f26dc900c9dafdd052e1539f25f7e"

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
