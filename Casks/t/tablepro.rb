cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.71.0"
  sha256 arm:   "9f98c07207c3ff5ee812501e07a96be65523c34c91a71e016db349846eb6d052",
         intel: "2f80c0a1925c64ea69247bad369085dd77031d0e531a78e7b0e9e1200a34aa46"

  url "https://github.com/TableProApp/TablePro/releases/download/v#{version}/TablePro-#{version}-#{arch}.dmg"
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
