cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.80.0"
  sha256 arm:   "dab176a2852e092037721acb01fe3bfa4a09aee329cae2a48f81c451f25def23",
         intel: "9c1c17052f07d2b1cb985b8b04c70f22fb40ff0caead810db8d89f7e3b287e6b"

  url "https://github.com/TableProApp/TablePro/releases/download/v#{version}/TablePro-#{version}-#{arch}.dmg"
  name "TablePro"
  desc "Native database client for many database types"
  homepage "https://tablepro.app/"

  livecheck do
    url "https://raw.githubusercontent.com/TableProApp/TablePro/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "TablePro.app"

  uninstall quit: "com.TablePro"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tablepro.sfl*",
    "~/Library/Application Support/TablePro",
    "~/Library/Caches/com.TablePro",
    "~/Library/HTTPStorages/com.TablePro",
    "~/Library/Preferences/com.TablePro.plist",
  ]
end
