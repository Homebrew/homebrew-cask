cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.76.0"
  sha256 arm:   "8b4f53f0c2bfadd538225b5ce2ac35e4ec3bc413ff26b8eb58763e67c894217b",
         intel: "157c4af63a430e60ea2e5b086d990c0ddf0e56eeb1c76ecc234c0ea59b8892f5"

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
    "~/Library/Application Support/TablePro",
    "~/Library/Caches/com.TablePro",
    "~/Library/HTTPStorages/com.TablePro",
    "~/Library/Preferences/com.TablePro.plist",
  ]
end
