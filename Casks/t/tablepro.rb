cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.75.0"
  sha256 arm:   "c168bada8fd7da7d185f2c8980a80372a14100d960f96186b69b665ee29a786a",
         intel: "a7363848ccc7a352ce53052c90c0376e9638d3c31467a6a63ba556162d266030"

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

  uninstall quit: "com.TablePro"

  zap trash: [
    "~/Library/Application Support/TablePro",
    "~/Library/Caches/com.TablePro",
    "~/Library/HTTPStorages/com.TablePro",
    "~/Library/Preferences/com.TablePro.plist",
  ]
end
