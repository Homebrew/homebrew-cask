cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.67.1"
  sha256 arm:   "a93a03434016dfc7abfcb19c72e454ff9ca6e8f6cfdd01dbc38f40549d0559fd",
         intel: "784f0db717db63b24c3a3ffb2fbf62e8baec4d1a36f40e02661c4bc7de9318cf"

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
